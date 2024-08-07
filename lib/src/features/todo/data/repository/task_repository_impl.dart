import 'package:todoapp/src/features/todo/data/data_source/task_db_helper.dart';
import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/domain/entities/task_model.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskDBHelper taskDB;

  TaskRepositoryImpl(this.taskDB);

  @override
  Future<List<Task>> getTasks(String selectedFilter) async {
    var taskModels = [];
    if (selectedFilter == "All") {
      taskModels = await taskDB.getTasks();
    } else if (selectedFilter == "Completed") {
      taskModels = await taskDB.getCompletedTasks();
    } else {
      taskModels = await taskDB.getPendingTasks();
    }
    return taskModels
        .map((model) => Task(
            id: model.id, title: model.title, isCompleted: model.isCompleted))
        .toList();
  }

  @override
  Future<void> insertTask(Task task) async {
    final taskModel = TaskModel(
        id: task.id, title: task.title, isCompleted: task.isCompleted);
    await taskDB.insertTask(taskModel);
  }

  @override
  Future<void> deleteTask(int id) async {
    await taskDB.deleteTask(id);
  }

  @override
  Future<void> updateTask(Task task) async {
    int isCompleted = -1;
    if (task.isCompleted == 0) {
      isCompleted = 1;
    } else {
      isCompleted = 0;
    }
    final taskModel =
        TaskModel(id: task.id, title: task.title, isCompleted: isCompleted);
    await taskDB.updateTask(taskModel);
  }
}
