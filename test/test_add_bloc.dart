import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todoapp/src/features/todo/bloc/add_task_bloc/add_task_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

import 'mocks.mocks.dart';

void main() {
  late AddTaskBloc addTaskBloc;
  late MockAddTaskUseCase mockAddTask;

  setUp(() {
    mockAddTask = MockAddTaskUseCase();
    addTaskBloc = AddTaskBloc(addTask: mockAddTask);
  });

  test('initial state is AddTaskInitial', () {
    expect(addTaskBloc.state, equals(AddTaskInitial()));
  });

  blocTest<AddTaskBloc, AddTaskState>(
    'emits [TaskAdded] when AddTaskEvent is added',
    build: () {
      when(mockAddTask(any))
          .thenAnswer((_) async => {});
      return addTaskBloc;
    },
    act: (bloc) =>
        bloc.add(AddTaskEvent(Task(id: 1, title: 'Test Task', isCompleted: 0))),
    expect: () => [TaskAdded()],
  );
}
