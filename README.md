# Todoapp

In this Flutter project, user can add a new task, mark task as completed, delete the task and filter the tasks as Pending or Completed. Project is using sqflite database to save tasks and bloc to manage the app state.

- [Getting Started](https://github.com/krian-kk/TodoApp/tree/main?tab=readme-ov-file#getting-started)
- [Running the app](https://github.com/krian-kk/TodoApp/tree/main?tab=readme-ov-file#running-the-app)
- [Running Tests](https://github.com/krian-kk/TodoApp/tree/main?tab=readme-ov-file#running-tests)
- [Architecture & Project Structure](https://github.com/krian-kk/TodoApp/tree/main?tab=readme-ov-file#architecture--project-structure)
- [State Management](https://github.com/krian-kk/TodoApp/tree/main?tab=readme-ov-file#state-management)
- [Running Demo](https://github.com/krian-kk/TodoApp?tab=readme-ov-file#running-demo)

## Getting Started

To run this project make sure latest version of flutter sdk has been installed in the system and run the following commands.

```
git clone https://github.com/krian-kk/TodoApp.git
cd todoapp
flutter pub get
```

### Running the app

Open the appropriate android emulator or ios simulator to run the project

For Running app in **Android**, use the instructions below:
```
flutter run
```

For Running app in **iOS**, use the instructions below:

To run the project in the iOS simulator, make sure that cocoapods is installed in the system and run the following commands

```
cd ios
pod install
flutter run
```

### Running Tests

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

(Optional) To run the test files project needs to generate the mock dependency files, to generate the mock files run the below command (This file is needed if mock.mock.dart is not present in test folder):

```
flutter pub run build_runner build 
```

### Architecture & Project Structure:
In this project we are using clean architecture principles to structure the code and separating the app into distinct layers: Presentation, Domain, and Data.

For this project we are using feature first project structure. Click [here](https://codewithandrea.com/articles/flutter-project-structure/) for more details.

![](/screenshots/project_structure.png)

### State Management:
This project is using BLOC state management framework to manages events and states in the app. Click [here](https://bloclibrary.dev/) for more details regarding bloc.

### Running Demo:
![](/screenshots/todo_demo.gif)