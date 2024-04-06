import 'package:flutter/material.dart';

class Task3 extends StatefulWidget{
  const Task3({super.key});

  @override
  State createState() => _Task3State();
}

class _Task3State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('DailyFlash 8|3'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 125,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                )
              ),
            ),
            Container(
              height: 150,
              width: 125,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
            ),
            Container(
              height: 150,
              width: 125,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
            ),
          ],
        )
      )
    );
  }
}