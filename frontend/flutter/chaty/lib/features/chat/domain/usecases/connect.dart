import '../repositories/repository.dart';

class ConnectUseCase {
  final ChatRepository repository;

  ConnectUseCase(this.repository);

  Future<void> call() {
    return repository.connect();
  }
}
