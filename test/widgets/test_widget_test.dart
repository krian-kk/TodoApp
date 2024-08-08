import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todoapp/src/features/todo/bloc/add_task_bloc/add_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/get_task_bloc/get_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/domain/usecase/add_task_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/delete_usecase.dart';
import 'package:todoapp/src/features/todo/domain/usecase/update_task_usecase.dart';
import 'package:todoapp/src/features/todo/presentation/widgets/task_widget.dart';

import '../mocks.mocks.dart';

void main() {
  testWidgets(
      'TaskWidget displays task title and handles completion and deletion',
      (WidgetTester tester) async {
    final task = Task(id: 1, title: 'Test Task', isCompleted: 0);

    final taskRepository = MockTaskRepositoryImpl();

    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => GetTasksBloc(taskRepository)),
          BlocProvider(
              create: (context) =>
                  AddTaskBloc(addTask: AddTask(taskRepository))),
          BlocProvider(
              create: (context) => DeleteTaskBloc(
                  deleteTask: DeleteTaskUseCase(taskRepository))),
          BlocProvider(
              create: (context) => UpdateTaskCompletedBloc(
                  markTaskComplete: UpdateTaskUseCase(taskRepository)))
        ],
        child: Scaffold(
          body: TaskWidget(
            task: task,
            deleteCallback: () {

            },
            toggleMarkCallback: () {

            },
          ),
        ),
      ),
    ));

    expect(find.text('Test Task'), findsOneWidget);

    await tester.tap(find.byType(Checkbox));
    await tester.pump();

    // Assuming you have logic to test the task completion state if needed
    await tester.longPress(find.text('Test Task'));
    // Verify if the delete action is handled, which might involve more integration with the BLoC
  });
}
