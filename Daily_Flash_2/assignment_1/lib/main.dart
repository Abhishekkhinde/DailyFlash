/*Create a screen that displays the container in the center having size (height: 200, width: 200).
The Container must have border with rounded edges.
The border must be of the color red.
Display a Text in the center of the container. 
*/

import 'package:assignment_1/assignment1.dart';
import 'package:assignment_1/assignment2.dart';
import 'package:assignment_1/assignment3.dart';
import 'package:assignment_1/assignment4.dart';
import 'package:assignment_1/assignment5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignmnt1(),
    );
  }
}
