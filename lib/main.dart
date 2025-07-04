import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_assignment/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const UiTaskApp());
}

class UiTaskApp extends StatelessWidget {
  const UiTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Task',
      home: const HomeScreen(),
    );
  }
}
