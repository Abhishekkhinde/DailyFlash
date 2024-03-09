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
        title: const Text("Daily Flash 7"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(20)),
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 40,
              ),
               Text(
                "Rating: 4.5",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
