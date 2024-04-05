import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.circle,
            color: Colors.blue.shade100,
            size: 50,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 225,
                width: 150,
                color: Colors.yellow.shade200,
              ),
              Container(
                height: 225,
                width: 150,
                color: Colors.red.shade200,
              ),
            ],
          ),
          Container(
            height: 175,
            width: 350,
            color: Colors.green.shade200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 225,
                width: 150,
                color: Colors.purple.shade200,
              ),
              Container(
                height: 225,
                width: 150,
                color: Colors.blue.shade200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
