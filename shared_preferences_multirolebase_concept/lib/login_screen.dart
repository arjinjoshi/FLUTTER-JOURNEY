import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('name', 'Arjin Joshi');
                sp.setInt('age', 21);
                sp.setBool('isLogin', false);

                print(sp.getString('name'));
                print(sp.getInt('age'));
                print(sp.getBool('isLogin'));

                sp.remove('name');
                print(sp.getString('name'));
                // arjinjoshi();
                // add(3.9, 4, 'hello guys');
                // add();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(child: Text('Click')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future<void> arjinjoshi() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print('delayed');
  // }
  // Future<int> arjinjoshi() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print('delayed');
  //   return 8;
  // }
  // Future<String> arjinjoshi() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print('delayed');
  //   return '12';
  // }
  // void add(double x, int y, String a) {
  //   print(x + y);
  //   print(a);
  // }

  // void add() {
  //   print(arjin(6, 8));
  // }

  // int arjin(int x, int y) {
  //   // return 8;
  //   // int a = 8;
  //   // return a;
  //   // return x + y;

  // String arjin(int x, int y) {
  //   return x.toString() + y.toString();
  // }
}
