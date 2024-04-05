import 'package:flutter/material.dart';

class Assignmnt2 extends StatefulWidget {
  const Assignmnt2({super.key});
  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.red, width: 5),
            ),
            color: Colors.blue,
          ),
          alignment: Alignment.center,
          child: const Text("DailyFlash 2"),
        ),
      ),
    );
  }
}
