import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State createState() => _MyApp1State();
}

class _MyApp1State extends State {
  // void initState() {
  //   super.initState();
  //   //Future.delayed(const Duration(seconds: 0), () async {
  //   getEmployeeData();
  //   //});
  // }

  Map<String, dynamic> empapidata = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: getEmployeeData),
      body: validateMap(),
    );
  }

  Widget validateMap() {
    if (empapidata.isNotEmpty) {
      return Row(
        children: [
          Text("${empapidata['employee_salary']}"),
          const SizedBox(
            width: 20,
          ),
          Text(empapidata['employee_name']),
        ],
      );
    } else {
      return Text("null data");
    }
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");

    http.Response response = await http.get(url);

    var responseData = json.decode(response.body);

    setState(() {
      empapidata = responseData["data"];
    });
  }
}
