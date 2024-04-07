import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
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
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(5, 5),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple], stops: [0.2, 0.50]),
          ),
        ),
      ),
    );
  }
}
