import 'package:chaty/features/chat/domain/repositories/repository.dart';

class ListUsersUseCase {
  final ChatRepository repository;

  ListUsersUseCase(this.repository);

  void call(String userId) {
    return repository.listUsers(userId);
  }
}
