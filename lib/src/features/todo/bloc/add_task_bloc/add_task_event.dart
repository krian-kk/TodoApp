part of 'add_task_bloc.dart';

abstract class AddTaskEvents extends Equatable {
  const AddTaskEvents();

  @override
  List<Object?> get props => [];
}

class AddTaskEvent extends AddTaskEvents {
  final Task task;

  const AddTaskEvent(this.task);

  @override
  List<Object?> get props => [task];
}
