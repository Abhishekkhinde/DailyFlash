import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Company(comapnyName: "google", empCount: 250);
      },
      child: const MaterialApp(
        home: MyApp(),
      ),
    );
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Notify Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Company>(context).comapnyName),
            const SizedBox(
              height: 20,
            ),
            Text("${Provider.of<Company>(context).empCount}"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Company>(context, listen: false)
                      .changeComapny("Nvidia", 345);
                },
                child: const Text("Change Data"))
          ],
        ),
      ),
    );
  }
}

class Company extends ChangeNotifier {
  String comapnyName;
  int empCount;

  Company({required this.comapnyName, required this.empCount});

  void changeComapny(String comapnyName, int empCount) {
    this.comapnyName = comapnyName;
    this.empCount = empCount;
    notifyListeners();
  }
}
