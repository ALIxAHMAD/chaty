// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChatMessage {
  final String id;
  final String senderId;
  final String senderName;
  final String content;
  final bool isSent;
  ChatMessage({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.content,
    required this.isSent,
  });
}

class ChatMessages {
  final List<ChatMessage> messages;
  ChatMessages({
    required this.messages,
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
