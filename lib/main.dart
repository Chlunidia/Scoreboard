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
    );
  }
}