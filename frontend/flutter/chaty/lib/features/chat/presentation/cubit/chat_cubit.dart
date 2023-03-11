import 'package:chaty/features/chat/domain/repositories/repository.dart';
import 'package:chaty/features/chat/domain/usecases/join.dart';
import 'package:chaty/features/chat/domain/usecases/list_users.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/enums.dart';
import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_user.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final JoinChatUseCase _joinChatUseCase;
  final ListUsersUseCase _listUsersUseCase;
  final ChatRepository repository;
  ChatCubit({
    required this.repository,
  })  : _joinChatUseCase = JoinChatUseCase(repository),
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
  }

  void listUsers() async {
    return await _listUsersUseCase(state.userId);
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
}
