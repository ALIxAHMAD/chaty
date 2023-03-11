// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChatMessage {
  final String senderName;
  final String content;
  ChatMessage({
    required this.senderName,
    required this.content,
  });
}

class ChatMessages {
  final List<ChatMessage> messages;
  ChatMessages({
    required this.messages,
  });
}

class MessageRequest {
  final String userId;
  final ChatMessage message;
  final String requestId;
  MessageRequest({
    required this.userId,
    required this.message,
    required this.requestId,
  });
}

class MessageResponse {
  final bool isOk;
  final String requestId;
  MessageResponse({
    required this.isOk,
    required this.requestId,
  });
}

class MessageUpdate {
  final String requestId;
  final bool isRead;
  MessageUpdate({
    required this.requestId,
    required this.isRead,
  });
}
