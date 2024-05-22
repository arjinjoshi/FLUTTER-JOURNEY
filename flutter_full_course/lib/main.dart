import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Arjin Joshi',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'pacifico',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),

        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // children: [
                  //   const SizedBox(
                  //     height: 20,
                  //     width: 20,
                  //   ),
                  //   Container(
                  //     height: 80,
                  //     width: 80,
                  //     color: Colors.pink,
                  //     child: Center(
                  //       child: Text('Container 1'),
                  //     ),
                  //   ),
                  //   const SizedBox(
                  //     height: 15,
                  //     width: 15,
                  //   ),
                  //   Container(
                  //     height: 100,
                  //     width: 110,
                  //     color: Colors.blue,
                  //     child: Center(
                  //       child: Text('Container 2'),
                  //     ),
                  //   ),
                  //   const SizedBox(
                  //     height: 15,
                  //     width: 15,
                  //   ),
                  //   Container(
                  //     height: 180,
                  //     width: 140,
                  //     color: Colors.purple,
                  //     child: Center(child: Text('Container 3')),
                  //   )
                  Text(
                    'Arjin',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.teal,
                        fontFamily: 'pacifico'),
                  ),
                  Text(
                    'Joshi',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.teal,
                        fontFamily: 'pacifico'),
                  ),
                  Text(
                    'AJ bhai',
                    style: TextStyle(fontSize: 40, fontFamily: 'pacifico'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.pink,
                child: const Center(child: Text('Container 1')),
              ),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              Container(
                height: 100,
                width: 110,
                color: Colors.blue,
                child: const Center(
                  child: Text('Container 2'),
                ),
              ),
              const SizedBox(
                height: 15,
                width: 15,
              ),
              Container(
                height: 180,
                width: 140,
                color: Colors.purple,
                child: const Center(child: Text('Container 3')),
              )
            ],
          ),
        ),

        // // single layoutt children
        // body: Center(
        //   child: Container(
        //     height: 200,
        //     width: 200,
        //     color: Colors.blue,
        //     child: Center(child: Text('Container')),
        //   ),
        // ),
        // body: const Center(
        //   child: Image(
        //     image: AssetImage('assets/family.jpg'),
        // image: NetworkImage(
        //     'https://avatars.githubusercontent.com/u/104689409?v=4'),
      ),
    );
  }
}





// yo chai stateful widget and stateless widgetko concept ho yo chai tyo matrialbox wala login ui banaisakexi herni ani concept clear hunxa
// simply bhannnu parda stateful widgetmaa setstate use garna milxa jasle recall garda widget build dekhi gardinxa just like hotreload so floating buttonmaa clk garda everytime value update hunxa
// But in case of stateless widget setstate use garna mildaina soo data update debugconsolemaa maatrai hunxa frontendmaa dekhinna floating buttonmaa clk garda tyo front endmaa dekhauna we need to do hot reload everytime jo garna difficult hunxa so ysto casemaaa stateful widget use garni 


// baki frontendmaa design maatrai garnatw jun use gareni bhooo 


// code herera ni bujham

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int x = 0;

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(
//               x.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//           // child: Column(
//           //   children: [

//           //   ],
//           // ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {});
//             // print('tap');
//             print(
//               x.toString(),
//             );
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   int x = 0;

//   @override
//   Widget build(BuildContext context) {
//     print('rebuild');
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My First App'),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(
//               x.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//           // child: Column(
//           //   children: [

//           //   ],
//           // ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             // setState(() {});
//             // print('tap');
//             print(
//               x.toString(),
//             );
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
