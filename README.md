# Todoapp

In this Flutter project, user can add a new task, mark task as completed, delete the task and filter the tasks as Pending or Completed.

## Getting Started

To run this project make sure latest version of flutter sdk has been installed in the system and run the following commands.

```
git clone https://github.com/krian-kk/TodoApp.git

```

Open the appropriate android emulator or ios simulator to run the project

For Running in Android, use the instructions below:
```
flutter run

```

For Running in iOS, use the instructions below:

To run the project in the iOS simulator, make sure that cocoapods is installed in the system and run the following commands
```
cd ios
pod install
flutter run
```

To run the test files project needs to generate the mock dependency files, to generate the mock files run the below command first:

```
flutter pub run build_runner build 
```

Above command is mandatory and needs to run any of the below test commands

Run Unit tests for adding a task using below command:
```
flutter test test/test_add_bloc.dart
```

Run Unit tests for deleting a task using below command:
```
flutter test test/test_delete_task.dart
```

Run Unit tests for marking a task as completed using below command:
```
flutter test test/test_mark_complete_task.dart
```

Run Widget tests for task widget:
```
flutter test test/widgets/test_widget_test.dart
```

