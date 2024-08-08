import 'package:flutter/material.dart';
import 'package:todoapp/src/routing/app_routing.dart';

void main() {
  runApp(const MyApp());
}

///using go_router for configuring routes
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todo App',
      routerConfig: AppRouter().goRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
