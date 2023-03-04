import 'package:chaty/features/chat/domain/entities/chat_user.dart';
import 'package:chaty/features/chat/domain/entities/chat_message.dart';
import 'package:chaty/features/chat/domain/repositories/repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  @override
  void join(String userName) {
    // TODO: implement join
  }

  @override
  // TODO: implement joinResponse
  Stream<JoinResponse> get joinResponse => throw UnimplementedError();

  @override
  void listUsers(String userId) {
    // TODO: implement listUsers
  }

  @override
  // TODO: implement messageResponses
  Stream<MessageResponse> get messageResponses => throw UnimplementedError();

  @override
  // TODO: implement messageUpdates
  Stream<MessageUpdate> get messageUpdates => throw UnimplementedError();

  @override
  // TODO: implement messages
  Stream<ChatMessage> get messages => throw UnimplementedError();

  @override
  void sendMessage(
      String userName, String content, String requestId, String userId) {
    // TODO: implement sendMessage
  }

  @override
  // TODO: implement typingStates
  Stream<TypingState> get typingStates => throw UnimplementedError();

  @override
  void updateTypingState(String id, bool isTyping) {
    // TODO: implement updateTypingState
  }

  @override
  // TODO: implement userEvents
  Stream<UserEvents> get userEvents => throw UnimplementedError();

  @override
  // TODO: implement users
  Stream<Users> get users => throw UnimplementedError();
}
