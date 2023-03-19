import 'package:dynamic_color_example/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DynamicColorExampleApp());
}

class DynamicColorExampleApp extends StatelessWidget {
  const DynamicColorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Color Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
