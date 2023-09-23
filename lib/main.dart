import 'package:flutter/material.dart';
import 'package:muji_note/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muji Note',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 123, 255, 139),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 123, 255, 139),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const StartPage(),
    );
  }
}
