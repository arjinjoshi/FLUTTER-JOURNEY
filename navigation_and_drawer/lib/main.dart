import 'package:flutter/material.dart';
import 'package:navigation_and_drawer/homescreen.dart';
import 'package:navigation_and_drawer/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo(),
      },
      // home: HomeScreen(),
    );
  }
}
