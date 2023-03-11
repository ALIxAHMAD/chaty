import 'package:chaty/features/chat/domain/repositories/repository.dart';

class SendMessageUseCase {
  final ChatRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(
    String userName,
    String content,
    String requestId,
    String userId,
  ) {
    return repository.sendMessage(
      userName,
      content,
      requestId,
      userId,
    );
  }
}
