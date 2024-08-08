import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todoapp/src/features/todo/bloc/delete_task_bloc/delete_task_bloc.dart';

import 'mocks.mocks.dart';

void main() {
  late DeleteTaskBloc deleteTaskBloc;
  late MockDeleteTaskUseCase mockDeleteTask;

  setUp(() {
    mockDeleteTask = MockDeleteTaskUseCase();
    deleteTaskBloc = DeleteTaskBloc(deleteTask: mockDeleteTask);
  });

  test('initial state is DeleteTaskInitial', () {
    expect(deleteTaskBloc.state, equals(DeleteTaskInitial()));
  });

  blocTest<DeleteTaskBloc, DeleteTaskState>(
    'emits [TaskDeleted] when DeleteTaskEvent is added',
    build: () {
      when(mockDeleteTask(any)).thenAnswer((_) async => {});
      return deleteTaskBloc;
    },
    act: (bloc) => bloc.add(DeleteTaskEvent(1)),
    expect: () => [TaskDeleted()],
  );
}
