import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();
}

class _MainAppState extends State {
  String companyName = "Google";
  int empCount = 250;
  @override
  Widget build(BuildContext context) {
    return Company(
      companyName: companyName,
      empCount: empCount,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Inherited Widget"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CompanyData(),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: const Text("change Data"),
                onTap: () {
                  setState(() {
                    companyName = "Nvidia";
                    empCount++;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyData extends StatelessWidget {
  const CompanyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Company.of(context).companyName),
        const SizedBox(
          width: 40,
        ),
        Text("${Company.of(context).empCount}")
      ],
    );
  }
}

class Company extends InheritedWidget {
  final String companyName;
  final int empCount;

  const Company({
    super.key,
    required this.companyName,
    required this.empCount,
    required super.child,
  });

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override
  bool updateShouldNotify(Company oldWidget) {
    return companyName != oldWidget.companyName ||
        empCount != oldWidget.empCount;
  }
}
