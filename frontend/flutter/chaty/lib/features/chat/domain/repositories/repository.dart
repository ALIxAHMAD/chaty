// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chaty/features/chat/domain/entities/chat_message.dart';
import 'package:chaty/features/chat/domain/entities/chat_user.dart';

abstract class ChatRepository {
  final Stream<ChatMessage> messages;
  final Stream<Users> users;
  final Stream<JoinResponse> joinResponse;
  final Stream<MessageResponse> messageResponses;
  final Stream<UserEvents> userEvents;
  final Stream<TypingState> typingStates;
  final Stream<MessageUpdate> messageUpdates;
  ChatRepository({
    required this.messages,
    required this.users,
    required this.joinResponse,
    required this.messageResponses,
    required this.userEvents,
    required this.typingStates,
    required this.messageUpdates,
  });

  void join(String userName);
  void sendMessage(
    String userName,
    String content,
    String requestId,
    String userId,
  );
  void updateTypingState(
    String id,
    bool isTyping,
  );
  void listUsers(String userId);
}
