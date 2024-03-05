import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task(),
    );
  }
}

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool color1 = true;
  @override
  Widget build(BuildContext contexts) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            height: 200,
            width: 200,
            //  padding: const EdgeInsets.all(100),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.fromBorderSide(
                BorderSide(color: color1 ? Colors.red : Colors.blue),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              color1 = false;
            });
          },
        ),
      ),
    );
  }
}
