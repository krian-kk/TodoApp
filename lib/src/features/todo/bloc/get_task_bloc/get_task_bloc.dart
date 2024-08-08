import 'package:bloc/bloc.dart';
import 'package:todoapp/src/features/todo/data/repository/task_repository.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/domain/usecase/get_task_usecase.dart';

part 'get_task_state.dart';

part "get_task_event.dart";

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  final GetTasks getTasksUseCase;
  final TaskRepository taskRepository;

  GetTasksBloc(this.taskRepository)
      : getTasksUseCase = GetTasks(taskRepository),
        super(GetTasksInitial()) {
    on<GetTasksEvent>((event, emit) async {
      if (event is LoadTasksRequested) {
        final tasks = await getTasksUseCase.call(event.selectedFilter);
        emit(UpdateTaskHeaderSuccess());
        emit(GetTasksSuccess(tasks));
      }
    });
  }
}
