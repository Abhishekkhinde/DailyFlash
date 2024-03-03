import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignmnt2(),
    );
  }
}

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
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            border:
                Border.fromBorderSide(BorderSide(color: Colors.red, width: 5)),
            color: Colors.blue,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
          ),
          alignment: Alignment.center,
          child: const Text("DailyFlash 2"),
        ),
      ),
    );
  }
}
