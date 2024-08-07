import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todoapp/src/features/todo/domain/usecase/delete_usecase.dart';

part 'delete_task_event.dart';

part 'delete_task_state.dart';

class DeleteTaskBloc extends Bloc<DeleteTaskEvent, DeleteTaskState> {
  final DeleteTaskUseCase deleteTask;

  DeleteTaskBloc({required this.deleteTask}) : super(DeleteTaskInitial()) {
    on<DeleteTaskEvent>(_onDeleteTask);
  }

  Future<void> _onDeleteTask(
      DeleteTaskEvent event, Emitter<DeleteTaskState> emit) async {
    await deleteTask(event.id);
    emit(TaskDeleted());
  }
}
