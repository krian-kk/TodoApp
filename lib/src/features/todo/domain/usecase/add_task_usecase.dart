import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class AddTask {
  final TaskRepository repository;

  AddTask(this.repository);

  Future<void> call(Task task) {
    return repository.insertTask(task);
  }
}
