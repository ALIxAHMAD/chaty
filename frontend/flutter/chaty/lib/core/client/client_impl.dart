// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:chaty/core/client/grpc/api.pbgrpc.dart';
import 'package:chaty/core/client/models/chat_user.dart';
import 'package:chaty/core/enums/enums.dart';

import 'client.dart';

class ChatClientImpl implements ChatClient {
  final ChatServiceClient client;
  ChatClientImpl({
    required this.client,
  });

  @override
  Future<Stream<ServerEventsModel>> connect(
      Stream<ClientEventsModel> clientEventsModel) async {
    final response = client.connect(
      clientEventsModel.asyncMap(
        (event) {
          if (event.joinRequest != null) {
            return ClientEvents(
              joinRequest: JoinRequest(userName: event.joinRequest),
            );
          }
          if (event.messageRequest != null) {
            return ClientEvents(
              messageRequest: MessageRequest(
                message: ChatMessage(
                  userName: event.messageRequest?.message.senderName,
                  text: event.messageRequest?.message.content,
                ),
                requestId: event.messageRequest?.requestId,
              ),
            );
          }
          if (event.typingState != null) {
            return ClientEvents(
              typingState: TypingState(
                isTyping: event.typingState?.isTyping,
                userId: event.typingState?.userId,
              ),
            );
          }
          if (event.listUsers != null) {
            return ClientEvents(
              listUsers: ListUsers(
                userId: event.listUsers,
              ),
            );
          } else {
            return ClientEvents();
          }
        },
      ),
    );
    final result = StreamController<ServerEventsModel>();
    response.forEach((element) {
      if (element.hasJoinResponse()) {
        result.add(ServerEventsModel(
          joinResponse: JoinResponseModel(
            userId: element.joinResponse.userId,
            userName: element.joinResponse.userName,
          ),
        ));
      }
      if (element.hasUsers()) {
        result.add(ServerEventsModel(
            users: UsersModel(
          users: element.users.users
              .map(
                (e) => UserModel(
                  userName: e.userName,
                  id: e.userId,
                ),
              )
              .toList(),
        )));
      }
      if (element.hasUserEvents()) {
        final Events event;
        switch (element.userEvents.events.value) {
          case 0:
            event = Events.joined;
            break;
          case 1:
            event = Events.leaved;
            break;
          default:
            event = Events.leaved;
        }
        result.add(ServerEventsModel(
          usersEvents: UserEventsModel(
            userName: element.userEvents.userName,
            userId: element.userEvents.userId,
            events: event,
          ),
        ));
      }
    });
    return result.stream;
  }
}
