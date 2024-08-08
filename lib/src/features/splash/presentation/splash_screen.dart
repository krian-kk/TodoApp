import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// after 400 milliseconds app will route to TaskHomeScreen
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 400), () {
      if (mounted) {
        context.go('/taskHome');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
            child: Text(
          "Todo App",
          style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.w800,
              fontSize: 24),
        )),
      ),
    );
  }
}
