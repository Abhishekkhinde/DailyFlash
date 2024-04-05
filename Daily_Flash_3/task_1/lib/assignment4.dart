import 'package:flutter/material.dart';


class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _TaskState();
}

class _TaskState extends State<Task4> {
  bool color1 = true;
  @override
  Widget build(BuildContext contexts) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,

          //  padding: const EdgeInsets.all(100),
          decoration: const BoxDecoration(
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  blurStyle: BlurStyle.normal,
                  // blurRadius: 20,
                  offset: Offset(0, -5),
                  blurRadius: 10),
            ],
          ),
        ),
      ),
    );
  }
}
