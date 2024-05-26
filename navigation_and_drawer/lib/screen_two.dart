import 'package:flutter/material.dart';
import 'package:navigation_and_drawer/homescreen.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Screen 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/104689409?v=4'),
                  ),
                  title: Text('Arjin Joshi'),
                  subtitle: Text('Hello Bhai K xa?'),
                  trailing: Text('3:00AM'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
