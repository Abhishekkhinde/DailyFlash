import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State createState() => _DailyFlashState();
}

class Modelclass {
  String? name;

  Modelclass({this.name});
}

class _DailyFlashState extends State {
  List<dynamic> namelist = [
    Modelclass(name: 'Abhishek'),
    Modelclass(name: 'sandy'),
    Modelclass(name: 'monika'),
    Modelclass(name: 'darshan'),
    Modelclass(name: 'vinay'),
    Modelclass(name: 'vivek'),
    Modelclass(name: 'shivani'),
    Modelclass(name: 'sejal'),
    Modelclass(name: 'vikas'),
    Modelclass(name: 'vijay'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              Icons.circle,
              color: Colors.blue.shade100,
              size: 50,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: namelist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: Text("${namelist[index].name}"),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
