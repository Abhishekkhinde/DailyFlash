import 'package:flutter/material.dart';


class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _TaskState();
}

class _TaskState extends State<Task3> {
  bool color1 = true;
  @override
  Widget build(BuildContext contexts) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Container(
            height: 200,
            width: 200,
            //  padding: const EdgeInsets.all(100),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.fromBorderSide(
                BorderSide(color: color1 ? Colors.red : Colors.blue),
              ),
            ),
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
