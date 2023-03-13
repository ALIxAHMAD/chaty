import 'package:chaty/features/chat/domain/entities/chat_user.dart';

import '../repositories/repository.dart';

class GetTypingStatesUseCase {
  final ChatRepository repository;

  GetTypingStatesUseCase(this.repository);

  Stream<TypingState> call() {
    return repository.typingStates;
  }
}
