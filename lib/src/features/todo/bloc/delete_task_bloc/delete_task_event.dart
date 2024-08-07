part of 'delete_task_bloc.dart';

abstract class DeleteTaskEvents extends Equatable {
  const DeleteTaskEvents();

  @override
  List<Object?> get props => [];
}

class DeleteTaskEvent extends DeleteTaskEvents {
  final int id;

  const DeleteTaskEvent(this.id);

  @override
  List<Object?> get props => [id];
}
