import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});

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
          width: 120,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(5, 5),
              )
            ],
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.green],
              // stops: [0.2, 0.50],
            ),
          ),
        ),
      ),
    );
  }
}
