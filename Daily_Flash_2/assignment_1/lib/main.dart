/*Create a screen that displays the container in the center having size (height: 200, width: 200).
The Container must have border with rounded edges.
The border must be of the color red.
Display a Text in the center of the container. 
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignmnt1(),
    );
  }
}

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
