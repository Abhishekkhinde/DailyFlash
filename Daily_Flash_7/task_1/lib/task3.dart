import 'package:flutter/material.dart';



class Task3 extends StatefulWidget {
  const Task3({super.key});
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
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border.all(color: Colors.blue, width: 3),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    blurStyle: BlurStyle.outer,
                  )
                ]),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                border: Border.all(color: Colors.blue, width: 3),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    blurStyle: BlurStyle.outer,
                  )
                ]),
          )
        ],
      )),
    );
  }
}
