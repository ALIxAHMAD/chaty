// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:chaty/core/client/client.dart';
import 'package:chaty/core/client/models/chat_user.dart';
import 'package:chaty/features/chat/domain/entities/chat_message.dart';
import 'package:chaty/features/chat/domain/entities/chat_user.dart';
import 'package:chaty/features/chat/domain/repositories/repository.dart';

import '../../../../core/client/models/chat_message.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatClient client;

  final StreamController<ClientEventsModel> clientEventsStreamController =
      StreamController<ClientEventsModel>();

  final StreamController<JoinResponse> _joinController =
      StreamController<JoinResponse>();
  final StreamController<Users> _usersController = StreamController<Users>();
  final StreamController<UserEvents> _usersEventsController =
      StreamController<UserEvents>();
  final StreamController<ChatMessage> _chatMessageController =
      StreamController<ChatMessage>();
  final StreamController<MessageResponse> _messageResponseController =
      StreamController<MessageResponse>();
  final StreamController<TypingState> _typingStateController =
      StreamController<TypingState>();

  ChatRepositoryImpl({
    required this.client,
  });

  @override
  Future<void> connect() async {
    final response = await client.connect(clientEventsStreamController.stream);
    response.forEach((element) {
      if (element.joinResponse != null) {
        _joinController.add(
          JoinResponse(
            userName: element.joinResponse!.userName,
            userId: element.joinResponse!.userId,
          ),
        );
      }
      if (element.users != null) {
        _usersController.add(element.users!.toEntityUsers());
      }
      if (element.usersEvents != null) {
        _usersEventsController.add(UserEvents(
          userName: element.usersEvents!.userName,
          userId: element.usersEvents!.userId,
          events: element.usersEvents!.events,
        ));
      }
      if (element.chatMessage != null) {
        _chatMessageController.add(
          ChatMessage(
            isSent: true,
            id: element.chatMessage!.id,
            senderId: element.chatMessage!.senderId,
            senderName: element.chatMessage!.senderName,
            content: element.chatMessage!.content,
          ),
        );
      }
      if (element.messageResponse != null) {
        _messageResponseController.add(
          MessageResponse(
            isOk: element.messageResponse!.isOk,
            requestId: element.messageResponse!.requestId,
          ),
        );
      }
      if (element.typingState != null) {
        _typingStateController.add(
          TypingState(
            isTyping: element.typingState!.isTyping,
            userId: element.typingState!.userId,
          ),
        );
      }
    });
  }

  @override
  Future<void> join(String userName) async {
    clientEventsStreamController.add(
      ClientEventsModel(
        joinRequest: userName,
      ),
    );
  }

  @override
  Stream<JoinResponse> get joinResponse => _joinController.stream;

  @override
  Future<void> listUsers(String userId) async {
    clientEventsStreamController.add(
      ClientEventsModel(
        listUsers: userId,
      ),
    );
  }

  @override
  Stream<MessageResponse> get messageResponses =>
      _messageResponseController.stream;

  @override
  // TODO: implement messageUpdates
  Stream<MessageUpdate> get messageUpdates => throw UnimplementedError();

  @override
  Stream<ChatMessage> get messages => _chatMessageController.stream;

  @override
  Future<void> sendMessage(
      String userName, String content, String requestId, String userId) async {
    clientEventsStreamController.add(
      ClientEventsModel(
        messageRequest: ChatMessageModel(
          id: requestId,
          senderName: userName,
          content: content,
          senderId: userId,
        ),
      ),
    );
  }

  @override
  Stream<TypingState> get typingStates => _typingStateController.stream;

  @override
  Future<void> updateTypingState(String id, bool isTyping) async {
    clientEventsStreamController.add(
      ClientEventsModel(
        typingState: TypingStateModel(
          isTyping: isTyping,
          userId: id,
        ),
      ),
    );
  }

  @override
  Stream<UserEvents> get userEvents => _usersEventsController.stream;

  @override
  Stream<Users> get users => _usersController.stream;
}
