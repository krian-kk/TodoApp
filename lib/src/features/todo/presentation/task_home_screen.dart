import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskHomeScreen extends StatefulWidget {
  const TaskHomeScreen({super.key});

  @override
  State<TaskHomeScreen> createState() => _TaskHomeScreenState();
}

class _TaskHomeScreenState extends State<TaskHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Task App"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/addTask");
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
