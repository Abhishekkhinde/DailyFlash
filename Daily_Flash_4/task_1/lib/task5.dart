import 'package:flutter/material.dart';


class Task5 extends StatefulWidget {
  const Task5({super.key});

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  bool color1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 4.1"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: color1 ? Colors.red : null,
          child: GestureDetector(
            onLongPress: () {
              setState(() {
                color1 = true;
              });
            },
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
