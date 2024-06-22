import 'dart:convert';

import 'package:api_binding_model_class/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  List<Data> empData = [];
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: acceData),
        body: ListView.builder(
            itemCount: empData.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text("${empData[index].empName}"),
                ],
              );
            }));
  }

  void acceData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");

    http.Response response = await http.get(url);

    var reponseData = json.decode(response.body);

    EmpolyeeModel empmodel = EmpolyeeModel(reponseData);

    setState(() {
      empData = empmodel.data!;
    });
  }
}
