import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(create: (context) {
            log("in login provider");

            return Login(userName: "Kanha@12", password: "Kanha@19919");
          }),
          ProxyProvider<Login, Employee>(
            // create: (context) {
            //   log("in create");
            //   return Employee(
            //     empId: 12,
            //     empName: "kanha",
            //     userName: Provider.of<Login>(context, listen: false).userName,
            //     password: Provider.of<Login>(context, listen: false).password,
            //   );
            // },
            update: (context, login, employee) {
              log("in update");
              return Employee(
                empId: 12,
                empName: "kanha",
                userName: login.userName,
                password: Provider.of<Login>(context).password,
              );
            },
          )
        ],
        child: const MaterialApp(
          home: MyApp(),
        ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Login>(context).userName),
          Text(Provider.of<Login>(context).password),
          Text("${Provider.of<Employee>(context).empId}"),
          Text(Provider.of<Employee>(context).empName),
        ],
      ),
    ));
  }
}

class Login {
  String userName;
  String password;

  Login({required this.userName, required this.password});
}

class Employee {
  final int empId;
  final String empName;
  final String userName;
  final String password;

  const Employee(
      {required this.empId,
      required this.empName,
      required this.userName,
      required this.password});
}
