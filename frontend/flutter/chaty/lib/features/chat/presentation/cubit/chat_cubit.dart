import 'dart:math';

import 'package:chaty/features/chat/domain/repositories/repository.dart';
import 'package:chaty/features/chat/domain/usecases/join.dart';
import 'package:chaty/features/chat/domain/usecases/list_users.dart';
import 'package:chaty/features/chat/domain/usecases/send_message.dart';
import 'package:chaty/features/chat/domain/usecases/update_typing_state.dart.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/enums.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_user.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final JoinChatUseCase _joinChatUseCase;
  final ListUsersUseCase _listUsersUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final UpdateTypingStateUseCase _updateTypingStateUseCase;
  final ChatRepository repository;
  ChatCubit({
    required this.repository,
  })  : _joinChatUseCase = JoinChatUseCase(repository),
        _updateTypingStateUseCase = UpdateTypingStateUseCase(repository),
        _sendMessageUseCase = SendMessageUseCase(repository),
        _listUsersUseCase = ListUsersUseCase(repository),
        super(
          ChatState.initial(),
        );

  void joinChat(String userName) async {
    return await _joinChatUseCase(userName);
  }

  void connect() {
    repository.connect();
    repository.joinResponse.forEach((element) {
      emit(state.copyWith(
        userId: element.userId,
        userName: element.userName,
      ));
    });
    repository.users.forEach((element) {
      emit(
        state.copyWith(users: element),
      );
    });
    repository.userEvents.forEach((element) {
      handleUserEvent(element);
    });
    repository.messages.forEach((element) {
      addMessageToList(element);
    });
    repository.messageResponses.forEach((element) {
      handleMessageResponse(element);
    });
    repository.typingStates.forEach((element) {
      handelTypingState(element);
    });
  }

  void listUsers() async {
    await _listUsersUseCase(state.userId);
  }

  void sendMessage(String content) async {
    if (content == "") {
      return;
    }
    final id = randomId();
    addMessageToList(ChatMessage(
      isSent: false,
      content: content,
      senderName: state.userName,
      senderId: state.userId,
      id: id,
    ));
    _sendMessageUseCase(
      state.userName,
      content,
      id,
      state.userId,
    );
  }

  void addMessageToList(ChatMessage message) {
    final messages = ChatMessages(
      messages: state.messages.messages..add(message),
    );
    emit(state.copyWith(messages: messages));
  }

  void handelTypingState(TypingState typingState) {
    int index = state.users.users.indexWhere(
      (element) => element.id == typingState.userId,
    );
    final users = Users(users: state.users.users);
    users.users[index] = User(
      id: users.users[index].id,
      userName: users.users[index].userName,
      isTyping: typingState.isTyping,
    );
    emit(state.copyWith(users: users));
  }

  void handleMessageResponse(MessageResponse response) {
    if (response.isOk) {
      int index = state.messages.messages
          .indexWhere((element) => element.id == response.requestId);
      final messages = ChatMessages(messages: state.messages.messages);
      messages.messages[index] = ChatMessage(
        content: messages.messages[index].content,
        id: messages.messages[index].id,
        senderId: messages.messages[index].senderId,
        senderName: messages.messages[index].senderName,
        isSent: true,
      );
      emit(state.copyWith(messages: messages));
    }
  }

  void handleUserEvent(UserEvents event) {
    switch (event.events) {
      case Events.leaved:
        final users = Users(
          users: state.users.users
            ..removeWhere((element) => element.id == event.userId),
        );
        emit(state.copyWith(users: users));
        break;
      case Events.joined:
        final users = Users(
          users: state.users.users
            ..add(
              User(userName: event.userName, id: event.userId, isTyping: false),
            ),
        );
        emit(state.copyWith(users: users));
    }
  }

  void updateTypingState(bool isTyping) async {
    return await _updateTypingStateUseCase(state.userId, isTyping);
  }
}

String randomId() {
  return Random().nextInt(1000000).toString();
}
