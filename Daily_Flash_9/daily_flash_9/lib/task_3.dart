import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});
  @override
  State createState() => _Task3State();
}

class _Task3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2)),
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: Row(
                children: [
                  Image.network(
                    "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg",
                    height: 65,
                    width: 65,
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(child: Text("Core2Web")),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(child: Text("Biencaps")),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: const Center(child: Text("Incubator")),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    shape: const CircleBorder(),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
