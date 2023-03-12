// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chaty/features/chat/domain/entities/chat_message.dart';

class ChatMessageModel {
  final String id;
  final String senderId;
  final String senderName;
  final String content;
  ChatMessageModel({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.content,
  });
}

class MessageResponseModel {
  final bool isOk;
  final String requestId;
  MessageResponseModel({
    required this.isOk,
    required this.requestId,
  });
}

class MessageUpdateModel {
  final String requestId;
  final bool isRead;
  MessageUpdateModel({
    required this.requestId,
    required this.isRead,
  });
}
