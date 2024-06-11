import 'package:components_constructors_directories/components/mybutton2.dart';
import 'package:components_constructors_directories/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Code Refactoring, Working with Constants,\nConstructor Call & Passing Argument to constructor\nCreating Directories & importing them to use ',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kGrayColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text('Arjin Joshi', style: headingTextStyle),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),
              // Text(
              //   'Arjin Joshi',
              //   style: TextStyle(fontSize: 30, color: kBlueColor),
              // ),

              ///BUtton haruko lagi

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Login',
                      style: kheadingTextStyle,
                    ),
                  ),
                ),
              ),
              MyButton(
                title: 'Login',
                subtitle: ' Testing',
              ),
              MyButton(
                title: 'Sign Up',
                // subtitle: ' Karo',
              ),
              MyButton(
                title: 'Continue Up',
              ),
              MyButton2(),
              MyButton2(),
              MyButton2(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  // final String title;
  // // , subtitle;
  // const MyButton({
  //   super.key,
  //   required this.title,
  //   // required this.subtitle,
  // });
  final String title, subtitle;
  const MyButton({
    super.key,
    required this.title,
    this.subtitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            title + subtitle,
            // title + subtitle,
            // style: TextStyle(fontSize: 18, color: kWhiteColor),
            style:kheadingTextStyle;
          ),
        ),
      ),
    );
  }
}

// class MyButton2 extends StatelessWidget {
//   const MyButton2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Container(
//         height: 80,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.orange,
//         ),
//         child: Center(
//           child: Text('1'),
//         ),
//       ),
//     );
//   }
// }
