/* create AppBar give color your choice , 
add icon at the start of the AppBar ,
and add three icons at the end of the appbar */

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2State();
}

class _Assignment2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.access_alarm_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.add_home_sharp),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.login),
            SizedBox(
              width: 10,
            ),
          ]),
    );
  }
}
