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
      debugShowCheckedModeBanner: false,
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
            ScoreBoard2(),
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
  int count1 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Center(
        child: Card(
          color: const Color.fromARGB(255, 242, 235, 255),
          elevation: 5,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              children: <Widget>[
                const Center(
                  child: Card(
                    color: Color.fromARGB(255, 255, 253, 201),
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
                Center(
                  child: Text(
                    "$count1",
                    style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count1 -= 1;
                            if (count1 < 0) {
                              (count1 = 0);
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_downward),
                            Text("Down"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            while (count1 > 0) {
                              count1 = 0;
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.restore),
                            Text("Reset"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count1 += 1;
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_upward),
                            Text("Up"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScoreBoard2 extends StatefulWidget {
  const ScoreBoard2({super.key});

  @override
  State<ScoreBoard2> createState() => _ScoreBoard2State();
}

class _ScoreBoard2State extends State<ScoreBoard2> {
  int count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Center(
        child: Card(
          color: const Color.fromARGB(255, 242, 235, 255),
          elevation: 5,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              children: <Widget>[
                const Center(
                  child: Card(
                    color: Color.fromARGB(255, 213, 255, 201),
                    child: SizedBox(
                      width: 300,
                      height: 80,
                      child: Center(
                        child: Text(
                          "TEAM B",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "$count2",
                    style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count2 -= 1;
                            if (count2 < 0) {
                              (count2 = 0);
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_downward),
                            Text("Down"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            while (count2 > 0) {
                              count2 = 0;
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.restore),
                            Text("Reset"),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count2 += 1;
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.arrow_upward),
                            Text("Up"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScoreBoard3 extends StatefulWidget {
  const ScoreBoard3({super.key});

  @override
  State<ScoreBoard3> createState() => _ScoreBoard3State();
}

class _ScoreBoard3State extends State<ScoreBoard3> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}