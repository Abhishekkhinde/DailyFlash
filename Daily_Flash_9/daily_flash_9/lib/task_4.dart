import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});
  @override
  State createState() => _Task4State();
}

class _Task4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    hintText: "Hint Text",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
