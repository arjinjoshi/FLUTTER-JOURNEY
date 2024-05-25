import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Top Widgets'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // flex: 3,
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/104689409?v=4'),
                    ),
                    title: Text('Arjin Joshi'),
                    subtitle: Text('Subscribe to my Channel'),
                    trailing: Text('2:22 AM'),
                  );
                },
              ),
            ),
            // children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/104689409?v=4'),
              ),
              title: Text('Arjin Joshi'),
              subtitle: Text('Subscribe to my Channel'),
              trailing: Text('2:22 AM'),
            ),
            Expanded(
              // flex: 3,
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return Text('Arjin Joshi' + index.toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// // Just Return Above ListTile in ListBuilder Widget Then You gonna see CHATBOX
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               // flex: 3,
//               child: ListView.builder(
//                 itemCount: 200,
//                 itemBuilder: (context, index) {
//                   return const ListTile(
//                     leading: CircleAvatar(
//                       backgroundColor: Colors.black,
//                       backgroundImage: NetworkImage(
//                           'https://avatars.githubusercontent.com/u/104689409?v=4'),
//                     ),
//                     title: Text('Arjin Joshi'),
//                     subtitle: Text('Subscribe to my Channel'),
//                     trailing: Text('2:22 AM'),
//                   );
//                 },
//               ),
//             ),
//             // children: [
//             //   const ListTile(
//             //     leading: CircleAvatar(
//             //       backgroundColor: Colors.black,
//             //       backgroundImage: NetworkImage(
//             //           'https://avatars.githubusercontent.com/u/104689409?v=4'),
//             //     ),
//             //     title: Text('Arjin Joshi'),
//             //     subtitle: Text('Subscribe to my Channel'),
//             //     trailing: Text('2:22 AM'),
//             //   ),
//             //   Expanded(
//             //     // flex: 3,
//             //     child: ListView.builder(
//             //       itemCount: 200,
//             //       itemBuilder: (context, index) {
//             //         return Text('Arjin Joshi' + index.toString());
//             //       },
//             //     ),
//             //   ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // simple Listveiw Builder code

//             children: [
//   const ListTile(
//     leading: CircleAvatar(
//       backgroundColor: Colors.black,
//       backgroundImage: NetworkImage(
//           'https://avatars.githubusercontent.com/u/104689409?v=4'),
//     ),
//     title: Text('Arjin Joshi'),
//     subtitle: Text('Subscribe to my Channel'),
//     trailing: Text('2:22 AM'),
//   ),
//   Expanded(
//     // flex: 3,
//     child: ListView.builder(
//       itemCount: 200,
//       itemBuilder: (context, index) {
//         return Text('Arjin Joshi' + index.toString());
//       },
//     ),
//   ),
// ],

// // TextFormField Concept and Implementation
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 cursorColor: Colors.black,
//                 enabled: true,
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//                 decoration: InputDecoration(
//                   filled: false,
//                   prefixIcon: Icon(Icons.alternate_email),
//                   // icon: Icon(Icons.add),
//                   suffixIcon: Icon(Icons.lock_open),
//                   fillColor: Colors.grey.withOpacity(0.3),
//                   hintText: 'Email',
//                   // labelText: 'Email',
//                   hintStyle: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey.shade600,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.teal, width: 1),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   print(value);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// //  RichText Widget ko concept & Implementation
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//               child: RichText(
//                 text: TextSpan(
//                   text: "Don't have an account?  ",
//                   style: Theme.of(context).textTheme.bodyLarge,
//                   children: [
//                     TextSpan(
//                       text: 'Sign Up',
//                       style: TextStyle(
//                         decoration: TextDecoration.underline,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Aba chai chai divider ko concept and code lagam haitw
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             SizedBox(
//               height: 100,
//               width: 200,
//             ),
//             Divider(
//               color: Colors.black,
//               thickness: 0.5,
//             ),
//             SizedBox(
//               height: 100,
//               child: VerticalDivider(
//                 color: Colors.black,
//                 thickness: 0.5,
//               ),
//             ),
//             Divider(
//               color: Colors.black,
//               thickness: 0.5,
//             ),
//             Center(
//               child: CircleAvatar(
//                 radius: 100,
//                 backgroundColor: Colors.black,
//                 // child: Icon(
//                 //   Icons.person,
//                 //   size: 100,
//                 // ),
//                 backgroundImage: NetworkImage(
//                     'https://avatars.githubusercontent.com/u/104689409?v=4'),
//                 // child: Text('Hello Mero bhai'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // // La Ktahooo CircleAvatar ko concept clear garam yo example herera
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 radius: 100,
//                 backgroundColor: Colors.black,
//                 // child: Icon(
//                 //   Icons.person,
//                 //   size: 100,
//                 // ),
//                 backgroundImage: NetworkImage(
//                     'https://avatars.githubusercontent.com/u/104689409?v=4'),
//                 // child: Text('Hello Mero bhai'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Stack Widget Example haii ekdumm badiyaa parale explained xa
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               child: Stack(
//                 // alignment: Alignment.center,
//                 children: [
//                   Container(
//                     height: 250,
//                     width: 250,
//                     color: Colors.blue,
//                   ),
//                   Positioned(
//                     right: 0,
//                     child: Container(
//                       height: 200,
//                       width: 200,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   Positioned(
//                     top: 50,
//                     // bottom: 80,
//                     left: 50,
//                     // right: 50,
//                     child: Text('Hello Ktahoo'),
//                   ),
//                 ],
//               ),
//             ),
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   height: 90,
//                   width: 90,
//                   color: Colors.amber,
//                 ),
//                 Container(
//                   height: 80,
//                   width: 80,
//                   color: Colors.green,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Expanded Widget example in ROW;

// Row(
//   children: [
//     Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.amber,
//         height: 250,
//         child: Center(
//           child: Text('Container 1'),
//         ),
//       ),
//     ),
//     Expanded(
//       flex: 1,
//       child: Container(
//         color: Colors.red,
//         height: 250,
//         child: Center(
//           child: Text('Container 2'),
//         ),
//       ),
//     ),
//     Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.blue,
//         height: 250,
//         child: Center(
//           child: Text('Container 2'),
//         ),
//       ),
//     ),
//   ],
// ),

//             // Expanded Widget example in COLUMN

//             body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.amber,
//                 height: 250,
//                 child: Center(
//                   child: Text('Container 1'),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 color: Colors.blue,
//                 height: 250,
//                 child: Center(
//                   child: Text('Container 2'),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 3,
//               child: Center(
//                 child: Container(
//                   // height: 250,
//                   // width: 250,

//                   // transform: Matrix4.rotationZ(0.2),

//                   // padding: EdgeInsets.all(20),

//                   // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),

//                   // padding: EdgeInsets.only(
//                   //   left: 130,
//                   //   right: 80,
//                   //   top: 100,
//                   //   bottom: 80,
//                   // ),

//                   // margin: EdgeInsets.only(top: 450, left: 100),

//                   decoration: BoxDecoration(
//                     color: Colors.orange,
//                     borderRadius: BorderRadius.circular(10),
//                     // borderRadius: BorderRadius.circular(10),

//                     // borderRadius: const BorderRadius.only(
//                     //   topRight: Radius.circular(10),
//                     //   topLeft: Radius.elliptical(15, 15),
//                     //   bottomRight: Radius.circular(50),
//                     //   bottomLeft: Radius.elliptical(30, 30),
//                     // ),

//                     // border: Border.all(
//                     //   color: Colors.red,
//                     //   width: 2,
//                     // ),

//                     image: DecorationImage(
//                       image: NetworkImage(
//                           'https://avatars.githubusercontent.com/u/104689409?v=4'),

//                       // fit: BoxFit.fitHeight,

//                       // fit: BoxFit.fill,

//                       fit: BoxFit.cover,
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey,
//                         blurRadius: 100,
//                       ),
//                     ],
//                   ),
//                   child: Center(
//                     child: Text('Login 1'),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Firstmaa yo concept linye box decoration & box decoration IMAGE WIDGETko

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Top Widgets'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
// Center(
//               child: Container(
//                 height: 250,
//                 width: 250,

//                 // transform: Matrix4.rotationZ(0.2),

//                 // padding: EdgeInsets.all(20),

//                 // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),

//                 // padding: EdgeInsets.only(
//                 //   left: 130,
//                 //   right: 80,
//                 //   top: 100,
//                 //   bottom: 80,
//                 // ),

//                 // margin: EdgeInsets.only(top: 450, left: 100),

//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(10),
//                   // borderRadius: BorderRadius.circular(10),

//                   // borderRadius: const BorderRadius.only(
//                   //   topRight: Radius.circular(10),
//                   //   topLeft: Radius.elliptical(15, 15),
//                   //   bottomRight: Radius.circular(50),
//                   //   bottomLeft: Radius.elliptical(30, 30),
//                   // ),

//                   // border: Border.all(
//                   //   color: Colors.red,
//                   //   width: 2,
//                   // ),

//                   image: DecorationImage(
//                     image: NetworkImage(
//                         'https://avatars.githubusercontent.com/u/104689409?v=4'),

//                     // fit: BoxFit.fitHeight,

//                     // fit: BoxFit.fill,

//                     fit: BoxFit.cover,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 100,
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: Text('Login 1'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
