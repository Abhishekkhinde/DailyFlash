import 'dart:developer';

import 'package:flutter/material.dart';

class EpimerialState extends StatefulWidget {
  const EpimerialState({super.key});

  State<EpimerialState> createState() => _EpimerialStateState();
}

class _EpimerialStateState extends State<EpimerialState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Course(courseName: "Java"),
          const SizedBox(
            height: 50,
          ),
          Course(courseName: "Java"),
        ],
      ),
    );
  }
}

class Course extends StatefulWidget {
  final String courseName;

  const Course({super.key, required this.courseName});

  @override
  State<Course> createState() => _CourseStatee();
}

class _CourseStatee extends State<Course> {
  int referenceCount = 0;
  @override
  Widget build(BuildContext context) {
    log("in coursr State Build");

    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              referenceCount++;
            });
          },
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(widget.courseName),
          ),
        ),
        Container(
          child: Text("count:${referenceCount}"),
        )
      ],
    );
  }
}
