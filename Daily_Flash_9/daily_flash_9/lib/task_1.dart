import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});
  @override
  State createState() => _Task1State();
}

class _Task1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("task1 Daily FLash 9"),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 60,
            width: 60,
            color: Colors.red,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.amber,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.black,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.green,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
