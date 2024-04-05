import 'package:flutter/material.dart';


class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _TaskState();
}

class _TaskState extends State<Task2> {
  @override
  Widget build(BuildContext contexts) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          //  padding: const EdgeInsets.all(100),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWCSoAcwVcztL6bDnd9BCVb6xaov4RFH7aDw&usqp=CAU"),
            ),
          ),
          alignment: Alignment.center,
          child: const Text("Abhishek Khinde"),
        ),
      ),
    );
  }
}
