// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:chaty/core/client/models/chat_message.dart';
import 'package:chaty/core/client/models/chat_user.dart';

abstract class ChatClient {
  Future<Stream<ServerEventsModel>> connect(
      Stream<ClientEventsModel> clientEventsModel);
}

class ClientEventsModel {
  final String? joinRequest;
  final ChatMessageModel? messageRequest;
  final TypingStateModel? typingState;
  final String? listUsers;
  ClientEventsModel({
    this.joinRequest,
    this.messageRequest,
    this.typingState,
    this.listUsers,
  });
}

class ServerEventsModel {
  final JoinResponseModel? joinResponse;
  final MessageResponseModel? messageResponse;
  final UsersModel? users;
  final UserEventsModel? usersEvents;
  final ChatMessageModel? chatMessage;
  final TypingStateModel? typingState;
  final MessageUpdateModel? messageUpdate;
  ServerEventsModel({
    this.joinResponse,
    this.messageResponse,
    this.users,
    this.usersEvents,
    this.chatMessage,
    this.typingState,
    this.messageUpdate,
  });
}
