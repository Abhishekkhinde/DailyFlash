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
  @override
  State createState() => _DailyFlashState();
}

class _DailyFlashState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task 1",
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                height: 100,
                width: 100,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
