import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  // void initState() {
  //   super.initState();
  //   //Future.delayed(const Duration(seconds: 0), () async {
  //   getEmployeeData();
  //   //});
  // }

  List<dynamic> empapidata = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: getEmployeeData),
      body: ListView.builder(
          itemCount: empapidata.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text("${empapidata[index]['employee_salary']}"),
                const SizedBox(
                  width: 20,
                ),
                Text(empapidata[index]['employee_name']),
              ],
            );
          }),
    );
  }

  void getEmployeeData() async {
    Uri uri = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(uri);
    log(response.body);

    var responseData = json.decode(response.body);
    log("$uri");
    setState(() {
      empapidata = responseData['data'];
    });
  }
}
