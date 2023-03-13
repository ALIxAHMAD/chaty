import 'package:chaty/features/chat/domain/entities/chat_user.dart';

import '../repositories/repository.dart';

class GetUserEventsUseCase {
  final ChatRepository repository;

  GetUserEventsUseCase(this.repository);

  Stream<UserEvents> call() {
    return repository.userEvents;
  }
}
