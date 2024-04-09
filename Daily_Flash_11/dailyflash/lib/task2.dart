import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State createState() => _Task2State();
}

class _Task2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 10.1"),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(),
    );
  }
}
