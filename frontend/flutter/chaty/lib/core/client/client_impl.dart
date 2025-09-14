// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:chaty/core/client/grpc/api.pbgrpc.dart';
import 'package:chaty/core/client/models/chat_message.dart';
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
      // Mapping models to grpc
      clientEventsModel.asyncMap(
        (event) {
          if (event.joinRequest != null) {
            return ClientEvents(
              joinRequest: JoinRequest(userName: event.joinRequest),
            );
          }
          if (event.messageRequest != null) {
            return ClientEvents(
                chatMessage: ChatMessage(
              id: event.messageRequest!.id,
              text: event.messageRequest!.content,
              userId: event.messageRequest!.senderId,
              userName: event.messageRequest!.senderName,
            ));
          }
          if (event.typingState != null) {
            return ClientEvents(
              typingState: TypingState(
                isTyping: event.typingState!.isTyping,
                userId: event.typingState!.userId,
              ),
            );
          }
          if (event.listUsers != null) {
            return ClientEvents(
              listUsers: ListUsers(
                userId: event.listUsers!.id,
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
      // Mapping grpc to model
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
          ),
        ));
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
            return;
        }
        result.add(ServerEventsModel(
          usersEvents: UserEventsModel(
            userName: element.userEvents.userName,
            userId: element.userEvents.userId,
            events: event,
          ),
        ));
      }
      if (element.hasChatMessage()) {
        result.add(
          ServerEventsModel(
            chatMessage: ChatMessageModel(
              content: element.chatMessage.text,
              id: element.chatMessage.id,
              senderId: element.chatMessage.userId,
              senderName: element.chatMessage.userName,
            ),
          ),
        );
      }
      if (element.hasMessageResponse()) {
        result.add(ServerEventsModel(
          messageResponse: MessageResponseModel(
            isOk: element.messageResponse.isOk,
            requestId: element.messageResponse.requestId,
          ),
        ));
      }
      if (element.hasTypingState()) {
        result.add(ServerEventsModel(
            typingState: TypingStateModel(
          isTyping: element.typingState.isTyping,
          userId: element.typingState.userId,
        )));
      }
    });
    return result.stream;
  }
}
