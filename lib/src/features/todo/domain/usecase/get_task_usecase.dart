import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class GetTasks {
  final TaskRepository repository;

  GetTasks(this.repository);

  Future<List<Task>> call(String selectedFilter) {
    return repository.getTasks(selectedFilter);
  }
}
