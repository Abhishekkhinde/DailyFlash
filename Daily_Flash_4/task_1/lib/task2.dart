import 'package:flutter/material.dart';


class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 4.1"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 200),
              shape: const CircleBorder(),
              side: BorderSide(color: Colors.red)),
          onPressed: () {},
          child: const Text("data"),
        ),
      ),
    );
  }
}
