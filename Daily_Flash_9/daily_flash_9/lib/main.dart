import 'package:daily_flash_9/task_1.dart';
import 'package:daily_flash_9/task_2.dart';
import 'package:daily_flash_9/task_3.dart';
import 'package:daily_flash_9/task_4.dart';
import 'package:daily_flash_9/task_5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task5(),
    );
  }
}
