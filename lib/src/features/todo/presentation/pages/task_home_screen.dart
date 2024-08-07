import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/features/todo/bloc/add_task_bloc/add_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/delete_task_bloc/delete_task_bloc.dart';
import 'package:todoapp/src/features/todo/bloc/get_task_bloc/get_task_bloc.dart';
import 'package:todoapp/src/features/todo/domain/entities/task.dart';
import 'package:todoapp/src/features/todo/presentation/widgets/filter_widget.dart';
import 'package:todoapp/src/features/todo/presentation/widgets/task_widget.dart';

class TaskHomeScreen extends StatefulWidget {
  const TaskHomeScreen({super.key});

  @override
  State<TaskHomeScreen> createState() => _TaskHomeScreenState();
}

class _TaskHomeScreenState extends State<TaskHomeScreen> {
  String selectedFilter = "All";

  void updateFilter(String filter) {
    selectedFilter = filter;
    context
        .read<GetTasksBloc>()
        .add(LoadTasksRequested(selectedFilter: selectedFilter));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Task App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          BlocBuilder(
            buildWhen: (previous, current) {
              return current is UpdateTaskHeaderSuccess;
            },
            bloc: context.read<GetTasksBloc>(),
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FilterButton(
                    label: "All",
                    isSelected: selectedFilter == "All",
                    onTap: () => updateFilter("All"),
                  ),
                  FilterButton(
                    label: "Pending",
                    isSelected: selectedFilter == "Pending",
                    onTap: () => updateFilter("Pending"),
                  ),
                  FilterButton(
                    label: "Completed",
                    isSelected: selectedFilter == "Completed",
                    onTap: () => updateFilter("Completed"),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 16),
          BlocBuilder<GetTasksBloc, GetTasksState>(
            builder: (context, state) {
              if (state is GetTasksInitial) {
                context
                    .read<GetTasksBloc>()
                    .add(LoadTasksRequested(selectedFilter: selectedFilter));
                return const Center(child: CircularProgressIndicator());
              } else if (state is GetTasksSuccess) {
                int length = state.tasks.length;
                if (length == 0) {
                  return const Expanded(
                    child: Center(
                      child: Text("No Tasks found"),
                    ),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.tasks.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BlocProvider.value(
                            value: BlocProvider.of<DeleteTaskBloc>(context),
                            child: TaskWidget(
                                task: state.tasks[index],
                                deleteCallback: () {
                                  context.read<GetTasksBloc>().add(
                                      LoadTasksRequested(
                                          selectedFilter: selectedFilter));
                                },
                                toggleMarkCallback: () {
                                  context.read<GetTasksBloc>().add(
                                      LoadTasksRequested(
                                          selectedFilter: selectedFilter));
                                }));
                      },
                    ),
                  );
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    ));
  }

  ///pop up to add new task.
  Future<void> _showAddTaskDialog(BuildContext mContext) async {
    final taskController = TextEditingController();
    await showDialog(
      context: mContext,
      builder: (context) => AlertDialog(
        title: const Text('Add Task'),
        content: TextField(
          controller: taskController,
          decoration: const InputDecoration(hintText: 'Enter task detail'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final taskTitle = taskController.text;
              if (taskTitle.isNotEmpty) {
                final task = Task(
                    id: DateTime.now().millisecondsSinceEpoch,
                    title: taskTitle,
                    isCompleted: 0);
                mContext.read<AddTaskBloc>().add(AddTaskEvent(task));
              }
              mContext.pop();
              if (mounted) {
                mContext
                    .read<GetTasksBloc>()
                    .add(LoadTasksRequested(selectedFilter: selectedFilter));
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
