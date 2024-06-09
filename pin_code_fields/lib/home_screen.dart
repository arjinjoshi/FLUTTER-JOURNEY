import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
// import './constants/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Shopping App'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello'),
              PinCodeTextField(
                appContext: context,
                keyboardType: TextInputType.number,
                cursorColor: Colors.teal,
                obscureText: true,
                obscuringCharacter: '*',
                length: 6,
                onChanged: (value) {},
                enabled: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  selectedColor: Colors.red,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.orange.shade200, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
