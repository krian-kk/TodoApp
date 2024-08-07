import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class UpdateTaskUseCase {
  final TaskRepository repository;

  UpdateTaskUseCase(this.repository);

  Future<void> call(Task task) {
    return repository.updateTask(task);
  }
}
