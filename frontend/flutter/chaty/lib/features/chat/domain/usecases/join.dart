import 'package:chaty/features/chat/domain/repositories/repository.dart';

class JoinChatUseCase {
  final ChatRepository repository;

  JoinChatUseCase(this.repository);

  Future<void> call(String userName) {
    return repository.join(userName);
  }
}
