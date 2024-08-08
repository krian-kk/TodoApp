import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class AddTaskUseCase {
  final TaskRepository repository;

  AddTaskUseCase(this.repository);

  Future<void> call(Task task) {
    return repository.insertTask(task);
  }
}
