import 'package:mockito/annotations.dart';
import 'package:todoapp/src/features/todo/bloc/get_task_bloc/get_task_bloc.dart';
import 'package:todoapp/src/features/todo/data/data_source/task_db_helper.dart';
import 'package:todoapp/src/features/todo/data/repository/task_repository_impl.dart';
import 'package:todoapp/src/features/todo/domain/usecase/add_task_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/delete_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/update_task_usecase.dart';

@GenerateMocks([
  AddTask,
  DeleteTaskUseCase,
  UpdateTaskUseCase,
  TaskRepositoryImpl,
  GetTasksBloc
])
void main() {}
