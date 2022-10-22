import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreBoardApp());
}

class ScoreBoardApp extends StatelessWidget {
  const ScoreBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 197, 176, 255),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SCOREBOARD',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 248, 170, 196),
                  Color.fromARGB(255, 160, 208, 248),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: const <Widget>[
            Spacer(),
            ScoreBoard1(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class ScoreBoard1 extends StatefulWidget {
  const ScoreBoard1({super.key});

  @override
  State<ScoreBoard1> createState() => _ScoreBoard1State();
}

class _ScoreBoard1State extends State<ScoreBoard1> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(1),
      child: Center(
        child: Card(
          child: SizedBox(
            width: 300,
            height: 80,
            child: Center(
              child: Text(
                "TEAM A",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
