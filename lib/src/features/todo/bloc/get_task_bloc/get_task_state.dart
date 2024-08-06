part of 'get_task_bloc.dart';

abstract class GetTasksState {}

class GetTasksInitial extends GetTasksState {}

class GetTasksSuccess extends GetTasksState {
  final List<Task> tasks;

  GetTasksSuccess(this.tasks);
}
