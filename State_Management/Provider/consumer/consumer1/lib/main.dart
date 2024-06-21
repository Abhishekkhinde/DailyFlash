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
    log("Main App Build");
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Player(jerno: 45, playerName: "Rohit sharma");
        }),
        ChangeNotifierProvider(create: (context) {
          return Match(match: 200, score: 8800);
        })
      ],
      child: const MaterialApp(
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    log("MyApp Build");
    return Scaffold(
      body: Column(
        children: [
          Text(Provider.of<Player>(context).playerName),
          Text("${Provider.of<Player>(context).jerno}"),
          Consumer(builder: (context, value, child) {
            log("in consumer");
            return Column(
              children: [
                Text("${Provider.of<Match>(context).match}"),
                Text("${Provider.of<Match>(context).score}"),
              ],
            );
          }),
          ElevatedButton(
            onPressed: () {
              Provider.of<Match>(context, listen: false).changeData(200, 15);
            },
            child: const Text("chnage Data"),
          ),
        ],
      ),
    );
  }
}

class Player {
  int jerno;
  String playerName;

  Player({required this.jerno, required this.playerName});
}

class Match with ChangeNotifier {
  int score;
  int match;

  Match({required this.match, required this.score});

  void changeData(int score, int match) {
    this.match = match;
    this.score = score;
    notifyListeners();
  }
}
