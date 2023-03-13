import 'package:chaty/features/chat/domain/entities/chat_message.dart';

import '../repositories/repository.dart';

class GetMessageResponsesUseCase {
  final ChatRepository repository;

  GetMessageResponsesUseCase(this.repository);

  Stream<MessageResponse> call() {
    return repository.messageResponses;
  }
}
