import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todoapp/src/features/todo/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';

import 'mocks.mocks.dart';

void main() {
  late UpdateTaskCompletedBloc markTaskCompleteBloc;
  late MockUpdateTaskUseCase mockMarkTaskComplete;

  setUp(() {
    mockMarkTaskComplete = MockUpdateTaskUseCase();
    markTaskCompleteBloc =
        UpdateTaskCompletedBloc(markTaskComplete: mockMarkTaskComplete);
  });

  test('initial state is MarkTaskCompleteInitial', () {
    expect(markTaskCompleteBloc.state, equals(MarkTaskCompleteInitial()));
  });

  blocTest<UpdateTaskCompletedBloc, UpdateTaskCompleteState>(
    'emits [TaskMarkedComplete] when MarkTaskCompleteEvent is added',
    build: () {
      when(mockMarkTaskComplete(any)).thenAnswer((_) async => {});
      return markTaskCompleteBloc;
    },
    act: (bloc) => bloc.add(
        MarkTaskCompleteEvent(Task(id: 1, title: 'Test Task', isCompleted: 1))),
    expect: () => [TaskMarkedComplete()],
  );
}
