import 'package:flutter/material.dart';
import 'package:shared_preferences_multirolebase_concept/home_screen.dart';
import 'package:shared_preferences_multirolebase_concept/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference and Multi Role Base App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
