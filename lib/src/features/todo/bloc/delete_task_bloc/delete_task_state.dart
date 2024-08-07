part of 'delete_task_bloc.dart';

abstract class DeleteTaskState extends Equatable {
  const DeleteTaskState();

  @override
  List<Object?> get props => [];
}

class DeleteTaskInitial extends DeleteTaskState {}

class TaskDeleted extends DeleteTaskState {}
