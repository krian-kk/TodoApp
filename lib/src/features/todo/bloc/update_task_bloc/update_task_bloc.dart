
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/domain/usecase/update_task_usecase.dart';

part 'update_task_complete_event.dart';
part 'update_task_complete_state.dart';

class UpdateTaskCompletedBloc extends Bloc<UpdateTaskCompleteEvent, UpdateTaskCompleteState> {
  final UpdateTaskUseCase markTaskComplete;

  UpdateTaskCompletedBloc({required this.markTaskComplete}) : super(MarkTaskCompleteInitial()) {
    on<MarkTaskCompleteEvent>(_onMarkTaskComplete);
  }

  Future<void> _onMarkTaskComplete(MarkTaskCompleteEvent event, Emitter<UpdateTaskCompleteState> emit) async {
    await markTaskComplete.call(event.task);
    emit(TaskMarkedComplete());
  }
}
