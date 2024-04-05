import 'package:flutter/material.dart';


class Task2 extends StatefulWidget {
  const Task2({super.key});

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
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_640.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network(
                "https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}
