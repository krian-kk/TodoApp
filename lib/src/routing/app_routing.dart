import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/features/splash/presentation/splash_screen.dart';
import 'package:todoapp/src/features/todo/bloc/add_task_bloc/add_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/get_task_bloc/get_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:todoapp/src/features/todo/data/data_source/task_db_helper.dart';
import 'package:todoapp/src/features/todo/data/repository/task_repository_impl.dart';
import 'package:todoapp/src/features/todo/domain/usecase/add_task_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/delete_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/update_task_usecase.dart';
import 'package:todoapp/src/features/todo/presentation/pages/task_home_screen.dart';

/// Using go_router to manage routes. Initial location of route is SplashScreen
class AppRouter {
  final GoRouter goRouter;

  AppRouter() : goRouter = _router;

  static GoRouter get _router => GoRouter(
        initialLocation: '/',
        routes: <GoRoute>[
          GoRoute(
              path: '/',
              builder: (context, builder) {
                return const SplashScreen();
              }),
          GoRoute(
              path: '/taskHome',
              builder: (context, builder) {
                final taskDB = TaskDBHelper.instance;
                final taskRepository = TaskRepositoryImpl(taskDB);
                return MultiBlocProvider(providers: [
                  BlocProvider(
                      create: (context) => GetTasksBloc(taskRepository)),
                  BlocProvider(
                      create: (context) =>
                          AddTaskBloc(addTask: AddTaskUseCase(taskRepository))),
                  BlocProvider(
                      create: (context) => DeleteTaskBloc(
                          deleteTask: DeleteTaskUseCase(taskRepository))),
                  BlocProvider(
                      create: (context) => UpdateTaskCompletedBloc(
                          markTaskComplete: UpdateTaskUseCase(taskRepository)))
                ], child: const TaskHomeScreen());
              }),
        ],
      );
}
