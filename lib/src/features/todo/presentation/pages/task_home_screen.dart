import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/features/todo/presentation/widgets/filter_widget.dart';

class TaskHomeScreen extends StatefulWidget {
  const TaskHomeScreen({super.key});

  @override
  State<TaskHomeScreen> createState() => _TaskHomeScreenState();
}

class _TaskHomeScreenState extends State<TaskHomeScreen> {
  String selectedFilter = "All";

  void updateFilter(String filter) {
    setState(() {
      selectedFilter = filter;
    });
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
          Row(
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
          ),
          const SizedBox(height: 16)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/addTask");
        },
        child: const Icon(Icons.add),
      ),
    ));
  }
}
