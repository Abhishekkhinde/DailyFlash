import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State createState() => _DailyFreshState();
}

class _DailyFreshState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/abhi.JPG",
              height: 200,
              width: 200,
            ),
            Container(
              height: 50,
              width: 200,
              padding: const EdgeInsets.only(left: 70, top: 12),
              decoration: BoxDecoration(
                color: Colors.yellow,
                boxShadow: const [
                  BoxShadow(color: Colors.red, blurRadius: 20),
                ],
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Text("Abhishek"),
            )
          ],
        ),
      ),
    );
  }
}
