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
          ChangeNotifierProvider(
            create: (context) {
              log("in changenotifier provider create");

              return Login(userName: "Kanha@12", password: "Kanha@19919");
            },
          ),
          ChangeNotifierProxyProvider<Login, Employee>(
            create: (context) {
              log("in create change notifyproxy");
              return Employee(
                empId: 12,
                empName: "kanha",
                userName: Provider.of<Login>(context, listen: false).userName,
                password: Provider.of<Login>(context, listen: false).password,
              );
            },
            update: (context, login, employee) {
              log("in update change notifyproxy");
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

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    log("In MyApp Build");

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Provider.of<Employee>(context).empId}"),
          Text(Provider.of<Employee>(context).empName),
          Text(Provider.of<Login>(context).userName),
          Consumer(builder: (context, login, child) {
            log("in consumer");
            return Text(Provider.of<Login>(context).password);
          }),
          ElevatedButton(
              onPressed: () {
                Provider.of<Login>(context, listen: false)
                    .changePassword("kanha@1234tr");
              },
              child: const Text("chnage password"))
        ],
      ),
    ));
  }
}

class Login with ChangeNotifier {
  String userName;
  String password;

  Login({required this.userName, required this.password});

  void changePassword(String password) {
    this.password = password;
    log("in Change Passwors");
    notifyListeners();
  }
}

class Employee with ChangeNotifier {
  final int empId;
  final String empName;
  final String userName;
  final String password;

  Employee(
      {required this.empId,
      required this.empName,
      required this.userName,
      required this.password});
}
