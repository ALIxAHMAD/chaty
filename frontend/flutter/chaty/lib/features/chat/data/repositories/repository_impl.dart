// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:chaty/core/client/client.dart';
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
  // TODO: implement typingStates
  Stream<TypingState> get typingStates => throw UnimplementedError();

  @override
  Future<void> updateTypingState(String id, bool isTyping) async {
    // TODO: implement updateTypingState
    throw UnimplementedError();
  }

  @override
  // TODO: implement userEvents
  Stream<UserEvents> get userEvents => _usersEventsController.stream;

  @override
  // TODO: implement users
  Stream<Users> get users => _usersController.stream;
}
