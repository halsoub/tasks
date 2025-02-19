import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/components/task16.dart';
import 'package:tasks/tasks/task15.dart';
import 'package:tasks/tasks/task16.dart';
import 'package:tasks/view/details.dart';
import 'package:tasks/view/product_view_provider.dart';
import 'package:tasks/tasks/task1.dart';
import 'provider/product_provder.dart';
import 'tasks/task10.dart';
import 'tasks/task11.dart';
import 'tasks/task5.dart';
import 'tasks/task6.dart';
import 'tasks/task8.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task1(),
    );
  }
}
