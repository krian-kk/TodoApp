
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class TaskModel extends Task {
  TaskModel({required super.id, required super.title, required super.isCompleted});

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
    };
  }
}
