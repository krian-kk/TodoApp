import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  final VoidCallback deleteCallback;
  final VoidCallback toggleMarkCallback;

  const TaskWidget(
      {super.key,
      required this.task,
      required this.deleteCallback,
      required this.toggleMarkCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.title),
      leading: Checkbox(
        value: task.isCompleted == 1,
        onChanged: (value) {
          context.read<UpdateTaskCompletedBloc>().add(MarkTaskCompleteEvent(
              Task(
                  id: task.id,
                  title: task.title,
                  isCompleted: task.isCompleted)));
          toggleMarkCallback();
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          context.read<DeleteTaskBloc>().add(DeleteTaskEvent(task.id));
          deleteCallback();
        },
      ),
    );
  }
}
