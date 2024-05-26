import 'package:flutter/material.dart';
import 'package:navigation_and_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homescreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding:
              EdgeInsets.all(0), //ysle garda drawerko topmaa raheko space hatxa
          children: [
            // DrawerHeader(
            //   child: Text('Arjin Joshi'),
            // ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/104689409?v=4'),
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(
              //       backgroundImage: NetworkImage(
              //           'https://avatars.githubusercontent.com/u/104689409?v=4')),
              // ],
              accountName: Text('Arjin Joshi'),
              accountEmail: Text('thearjinjoshi1@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Page 2'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              child: Text('Screen 1'),
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
