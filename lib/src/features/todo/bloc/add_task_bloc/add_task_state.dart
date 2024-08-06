part of 'add_task_bloc.dart';

abstract class AddTaskState extends Equatable {
  const AddTaskState();

  @override
  List<Object?> get props => [];
}

class AddTaskInitial extends AddTaskState {}

class TaskAdded extends AddTaskState {}

