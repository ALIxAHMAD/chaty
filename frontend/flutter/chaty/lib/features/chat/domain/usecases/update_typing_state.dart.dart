import 'package:chaty/features/chat/domain/repositories/repository.dart';

class UpdateTypingStateUseCase {
  final ChatRepository repository;

  UpdateTypingStateUseCase(this.repository);

  void call(String id, bool isTyping) {
    return repository.updateTypingState(id, isTyping);
  }
}
