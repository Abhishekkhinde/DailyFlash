import 'package:flutter/material.dart';


class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 4.1"),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.orange,
        onPressed: () {},
      ),
    );
  }
}
