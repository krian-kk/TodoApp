import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';

class DeleteTaskUseCase {
  final TaskRepository repository;

  DeleteTaskUseCase(this.repository);

  Future<void> call(int id) {
    return repository.deleteTask(id);
  }
}
