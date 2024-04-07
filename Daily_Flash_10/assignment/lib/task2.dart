import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  State createState() => _Task1State();
}

class _Task1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 10.1"),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment(1, 1),
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
