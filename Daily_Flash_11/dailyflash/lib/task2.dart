import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State createState() => _Task2State();
}

class _Task2State extends State {
  bool isFocused = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 10.1"),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              suffixIcon: isFocused
                  ? const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 6),
                        Icon(Icons.lock),
                      ],
                    )
                  : const Icon(
                      Icons.lock,
                    ),
            ),
            onTap: () {
              const Icon(Icons.search);
              setState(() {
                isFocused = true;
              });
            },
          ),
        ),
      ),
    );
  }
}
