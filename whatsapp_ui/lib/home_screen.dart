import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Whatsapp'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Log Out'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/319174050_1468389020322392_2079428532520984257_n.jpg?_nc_cat=105&cb=99be929b-59f725be&ccb=1-7&_nc_sid=19026a&_nc_ohc=s84DLC2UORIAX8MJRRp&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBW9rsAY4uQlUgiCLF-mbVebIrEMu9OOOB98u7JcsMQAw&oe=64AE95BB'),
                  ),
                  title: Text('Sneha Sharma'),
                  subtitle: Text('I love you baby'),
                  trailing: Text('1:26 AM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New updates'),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/104689409?v=4'),
                          ),
                        ),
                        title: Text('Arjin Joshi'),
                        subtitle: Text('3m ago'),
                        trailing: Text('2:11 AM'),
                      ),
                    ],
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/319174050_1468389020322392_2079428532520984257_n.jpg?_nc_cat=105&cb=99be929b-59f725be&ccb=1-7&_nc_sid=19026a&_nc_ohc=s84DLC2UORIAX8MJRRp&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBW9rsAY4uQlUgiCLF-mbVebIrEMu9OOOB98u7JcsMQAw&oe=64AE95BB'),
                      ),
                    ),
                    title: Text('Sneha Sharma'),
                    subtitle: Text('35m ago'),
                    trailing: Text('1:26 AM'),
                  );
                }
              },
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/319174050_1468389020322392_2079428532520984257_n.jpg?_nc_cat=105&cb=99be929b-59f725be&ccb=1-7&_nc_sid=19026a&_nc_ohc=s84DLC2UORIAX8MJRRp&_nc_ht=scontent.fktm10-1.fna&oh=00_AfBW9rsAY4uQlUgiCLF-mbVebIrEMu9OOOB98u7JcsMQAw&oe=64AE95BB'),
                  ),
                  title: Text('Sneha Sharma'),
                  subtitle: Text(
                    index / 2 == 0 ? 'you missed call' : 'call times is 12:23s',
                  ),
                  trailing:
                      Icon(index % 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
// https://avatars.githubusercontent.com/u/104689409?v=4