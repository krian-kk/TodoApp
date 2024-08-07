part of 'update_task_bloc.dart';

abstract class UpdateTaskCompleteEvent extends Equatable {
  const UpdateTaskCompleteEvent();

  @override
  List<Object?> get props => [];
}

class MarkTaskCompleteEvent extends UpdateTaskCompleteEvent {
  final Task task;

  const MarkTaskCompleteEvent(this.task);

  @override
  List<Object?> get props => [task];
}
