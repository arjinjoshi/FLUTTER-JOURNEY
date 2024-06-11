import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  const MyButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
        child: Center(
          child: Text('1'),
        ),
      ),
    );
  }
}
