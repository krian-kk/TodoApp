import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/domain/usecase/add_task_usecase.dart';

part 'add_task_event.dart';

part 'add_task_state.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  final AddTask addTask;

  AddTaskBloc({required this.addTask}) : super(AddTaskInitial()) {
    on<AddTaskEvent>(_onAddTask);
  }

  Future<void> _onAddTask(
      AddTaskEvent event, Emitter<AddTaskState> emit) async {
    await addTask.call(event.task);
    emit(TaskAdded());
  }
}
