import 'package:flutter/material.dart';
import 'package:tasks/tasks/task1.dart';

import 'tasks/Task6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task6(),
    );
  }
}
