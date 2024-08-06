import 'package:flutter/material.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class TaskWidget extends StatelessWidget {
  final Task task;

  const TaskWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      leading: Checkbox(
        value: task.isCompleted == 1,
        onChanged: (value) {

        },
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {

        },
      ),
    );
  }
}
