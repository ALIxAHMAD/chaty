// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chaty/features/chat/domain/entities/chat_message.dart';
import 'package:chaty/features/chat/domain/entities/chat_user.dart';

abstract class ChatRepository {
  Stream<ChatMessage> get messages;
  Stream<Users> get users;
  Stream<JoinResponse> get joinResponse;
  Stream<MessageResponse> get messageResponses;
  Stream<UserEvents> get userEvents;
  Stream<TypingState> get typingStates;
  Stream<MessageUpdate> get messageUpdates;

  Future<void> connect();
  Future<void> join(String userName);
  Future<void> sendMessage(
    String userName,
    String content,
    String requestId,
    String userId,
  );
  Future<void> updateTypingState(
    String userId,
    bool isTyping,
  );
  Future<void> listUsers(String userId);
}
