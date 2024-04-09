import 'package:dailyflash/task1.dart';
import 'package:dailyflash/task2.dart';
import 'package:dailyflash/task3.dart';
import 'package:dailyflash/task4.dart';
import 'package:dailyflash/task5.dart';
import 'package:flutter/material.dart';

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
