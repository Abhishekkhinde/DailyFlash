import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DailyFlash(),
    );
  }
}

class DailyFlash extends StatefulWidget {
  const DailyFlash({super.key});

  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task 1",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/pizza.jpg"),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Pizza",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "A large ciecle of flat bread backed with cheese,tomatoes, and veqouetables spread on top",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
