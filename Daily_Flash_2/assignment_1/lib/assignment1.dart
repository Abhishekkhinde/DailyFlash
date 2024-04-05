import 'package:flutter/material.dart';

class Assignmnt1 extends StatefulWidget {
  const Assignmnt1({super.key});
  @override
  State createState() => _Assignment1State();
}

class _Assignment1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: const Border.fromBorderSide(
                BorderSide(color: Colors.red, width: 5)),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: const Text("DailyFlash 2"),
        ),
      ),
    );
  }
}
