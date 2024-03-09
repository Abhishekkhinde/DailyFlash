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
  bool color1 = true;
  bool color2 = true;
  bool color3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task 1",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: color1 ? Colors.white : Colors.red,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  color1 = false;
                });
              },
            ),
            GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: color2 ? Colors.white : Colors.green,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  color2 = false;
                });
              },
            ),
            GestureDetector(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: color3 ? Colors.white : Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  color3 = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
