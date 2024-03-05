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
