import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:todoapp/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('end-to-end test of adding and completing a task', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    sleep(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // Add a task
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Enter task details and save
    await tester.enterText(find.byType(TextField), 'New Task');
    await tester.tap(find.text('Add'));
    await tester.pumpAndSettle();

    expect(find.text('New Task'), findsOneWidget);

    // Mark task as complete
    await tester.tap(find.byType(Checkbox));
    await tester.pump();
  });
}
