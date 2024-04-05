import 'package:flutter/material.dart';
import 'package:task_1/task2.dart';
import 'package:task_1/task4.dart';
import 'package:task_1/task5.dart';
import 'task1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task5(),
    );
  }
}

