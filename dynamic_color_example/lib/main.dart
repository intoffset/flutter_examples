import 'package:dynamic_color/dynamic_color.dart';
import 'package:dynamic_color_example/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DynamicColorExampleApp());
}

class DynamicColorExampleApp extends StatelessWidget {
  const DynamicColorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) => MaterialApp(
        title: 'Dynamic Color Example',
        theme: _buildTheme(Brightness.light, lightColorScheme),
        darkTheme: _buildTheme(Brightness.dark, darkColorScheme),
        home: const HomeScreen(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}

ThemeData _buildTheme(Brightness brightness, ColorScheme? colorScheme) {
  return ThemeData(
    brightness: brightness,
    colorScheme: colorScheme,
  );
}
