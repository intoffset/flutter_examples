import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:theme_mode/home_screen.dart';
import 'package:theme_mode/share_preferences_instance.dart';
import 'package:theme_mode/theme_mode_provider.dart';

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

  // This widget is the root of your application.
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
    // useMaterial3: true,
    brightness: brightness,
  );
}
