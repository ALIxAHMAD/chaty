import 'package:chaty/features/chat/domain/entities/chat_message.dart';
import 'package:chaty/features/chat/domain/repositories/repository.dart';

class GetMessagesUseCase {
  final ChatRepository repository;

  GetMessagesUseCase(this.repository);

  Stream<ChatMessage> call() {
    return repository.messages;
  }
}
