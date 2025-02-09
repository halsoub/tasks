import 'package:flutter/material.dart';
import 'package:tasks/tasks/task1.dart';

import 'tasks/task5.dart';
import 'tasks/task6.dart';
import 'tasks/task8.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task8(),
    );
  }
}
