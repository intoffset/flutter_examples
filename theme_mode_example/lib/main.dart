import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_mode_example/home_screen.dart';
import 'package:theme_mode_example/share_preferences_instance.dart';
import 'package:theme_mode_example/theme_mode_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesInstance.initialize();

  runApp(
    const ProviderScope(
      child: ThemeModeExampleApp(),
    ),
  );
}

class ThemeModeExampleApp extends ConsumerWidget {
  const ThemeModeExampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Theme Mode Example',
      theme: _buildTheme(Brightness.light),
      darkTheme: _buildTheme(Brightness.dark),
      themeMode: ref.watch(themeModeProvider),
      home: const HomeScreen(),
    );
  }
}

ThemeData _buildTheme(Brightness brightness) {
  return ThemeData(
    brightness: brightness,
  );
}
