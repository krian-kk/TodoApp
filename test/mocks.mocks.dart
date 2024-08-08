// Mocks generated by Mockito 5.4.4 from annotations
// in todoapp/test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:bloc/bloc.dart' as _i12;
import 'package:mockito/mockito.dart' as _i1;
import 'package:todoapp/src/features/todo/bloc/get_task_bloc/get_task_bloc.dart'
    as _i5;
import 'package:todoapp/src/features/todo/data/data_source/task_db_helper.dart'
    as _i3;
import 'package:todoapp/src/features/todo/data/repository/task_repository.dart'
    as _i2;
import 'package:todoapp/src/features/todo/data/repository/task_repository_impl.dart'
    as _i11;
import 'package:todoapp/src/features/todo/domain/entities/task.dart' as _i8;
import 'package:todoapp/src/features/todo/domain/usecase/add_task_usecase.dart'
    as _i6;
import 'package:todoapp/src/features/todo/domain/usecase/delete_usecase.dart'
    as _i9;
import 'package:todoapp/src/features/todo/domain/usecase/get_task_usecase.dart'
    as _i4;
import 'package:todoapp/src/features/todo/domain/usecase/update_task_usecase.dart'
    as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTaskRepository_0 extends _i1.SmartFake
    implements _i2.TaskRepository {
  _FakeTaskRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTaskDBHelper_1 extends _i1.SmartFake implements _i3.TaskDBHelper {
  _FakeTaskDBHelper_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetTasks_2 extends _i1.SmartFake implements _i4.GetTasks {
  _FakeGetTasks_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetTasksState_3 extends _i1.SmartFake implements _i5.GetTasksState {
  _FakeGetTasksState_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AddTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddTaskUseCase extends _i1.Mock implements _i6.AddTaskUseCase {
  MockAddTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TaskRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTaskRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TaskRepository);

  @override
  _i7.Future<void> call(_i8.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [DeleteTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteTaskUseCase extends _i1.Mock implements _i9.DeleteTaskUseCase {
  MockDeleteTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TaskRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTaskRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TaskRepository);

  @override
  _i7.Future<void> call(int? id) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [id],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [UpdateTaskUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTaskUseCase extends _i1.Mock implements _i10.UpdateTaskUseCase {
  MockUpdateTaskUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TaskRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTaskRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.TaskRepository);

  @override
  _i7.Future<void> call(_i8.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [TaskRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskRepositoryImpl extends _i1.Mock
    implements _i11.TaskRepositoryImpl {
  MockTaskRepositoryImpl() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.TaskDBHelper get taskDB => (super.noSuchMethod(
        Invocation.getter(#taskDB),
        returnValue: _FakeTaskDBHelper_1(
          this,
          Invocation.getter(#taskDB),
        ),
      ) as _i3.TaskDBHelper);

  @override
  _i7.Future<List<_i8.Task>> getTasks(String? selectedFilter) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTasks,
          [selectedFilter],
        ),
        returnValue: _i7.Future<List<_i8.Task>>.value(<_i8.Task>[]),
      ) as _i7.Future<List<_i8.Task>>);

  @override
  _i7.Future<void> insertTask(_i8.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #insertTask,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> deleteTask(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTask,
          [id],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> updateTask(_i8.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #updateTask,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [GetTasksBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTasksBloc extends _i1.Mock implements _i5.GetTasksBloc {
  MockGetTasksBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.GetTasks get getTasksUseCase => (super.noSuchMethod(
        Invocation.getter(#getTasksUseCase),
        returnValue: _FakeGetTasks_2(
          this,
          Invocation.getter(#getTasksUseCase),
        ),
      ) as _i4.GetTasks);

  @override
  _i2.TaskRepository get taskRepository => (super.noSuchMethod(
        Invocation.getter(#taskRepository),
        returnValue: _FakeTaskRepository_0(
          this,
          Invocation.getter(#taskRepository),
        ),
      ) as _i2.TaskRepository);

  @override
  _i5.GetTasksState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeGetTasksState_3(
          this,
          Invocation.getter(#state),
        ),
      ) as _i5.GetTasksState);

  @override
  _i7.Stream<_i5.GetTasksState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i7.Stream<_i5.GetTasksState>.empty(),
      ) as _i7.Stream<_i5.GetTasksState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void add(_i5.GetTasksEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i5.GetTasksEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i5.GetTasksState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i5.GetTasksEvent>(
    _i12.EventHandler<E, _i5.GetTasksState>? handler, {
    _i12.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i12.Transition<_i5.GetTasksEvent, _i5.GetTasksState>? transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  void onChange(_i12.Change<_i5.GetTasksState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
