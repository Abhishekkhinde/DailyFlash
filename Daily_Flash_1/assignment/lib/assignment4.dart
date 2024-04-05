import 'package:flutter/material.dart';



class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State createState() => _Assignment4State();
}

class _Assignment4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.blue,
            border: Border.fromBorderSide(
              BorderSide(
                color: Colors.red,
                width: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
