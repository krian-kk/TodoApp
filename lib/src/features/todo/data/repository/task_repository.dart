import 'dart:async';

import 'package:todoapp/src/features/todo/domain/entities/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getTasks(String selectedFilter);

  Future<void> insertTask(Task task);

  Future<void> deleteTask(int id);

  Future<void> updateTask(Task task);

}
