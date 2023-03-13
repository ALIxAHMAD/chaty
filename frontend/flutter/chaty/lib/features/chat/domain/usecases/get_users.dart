import 'package:chaty/features/chat/domain/entities/chat_user.dart';

import '../repositories/repository.dart';

class GetUsersUseCase {
  final ChatRepository repository;

  GetUsersUseCase(this.repository);

  Stream<Users> call() {
    return repository.users;
  }
}
