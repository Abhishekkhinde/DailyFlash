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
  bool color1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1"),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            height: 200,
            width: 200,
            color: color1 ? Colors.red : Colors.blue,
            alignment: Alignment.center,
            child: color1
                ? const Text("DailyFlash 2")
                : const Text("Container Clicked"),
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
