import 'package:flutter/material.dart';



class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 4.1"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Row(
          children: [
            Text("Abhishek"),
            Icon(Icons.home),
          ],
        ),
        
      ),
    );
  }
}
