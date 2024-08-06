part of 'get_task_bloc.dart';

abstract class GetTasksEvent {}

class LoadTasksRequested extends GetTasksEvent {
  String selectedFilter;

  LoadTasksRequested({required this.selectedFilter});
}
