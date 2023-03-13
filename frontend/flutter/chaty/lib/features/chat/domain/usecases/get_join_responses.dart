import 'package:chaty/features/chat/domain/entities/chat_user.dart';

import '../repositories/repository.dart';

class GetJoinResponsesUseCase {
  final ChatRepository repository;

  GetJoinResponsesUseCase(this.repository);

  Stream<JoinResponse> call() {
    return repository.joinResponse;
  }
}
