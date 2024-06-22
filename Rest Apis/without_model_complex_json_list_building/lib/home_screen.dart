import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data;
  Future<void> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Without Model List Building Complex Json',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text('Loading');
                } else {
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              ReusableRow(
                                title: 'Name',
                                value: data[index]['name'].toString(),
                              ),
                              ReusableRow(
                                title: 'Username',
                                value: data[index]['username'].toString(),
                              ),
                              ReusableRow(
                                title: 'Phone',
                                value: data[index]['phone'].toString(),
                              ),
                              ReusableRow(
                                title: 'Street',
                                value:
                                    data[index]['address']['street'].toString(),
                              ),
                              ReusableRow(
                                title: 'City',
                                value:
                                    data[index]['address']['city'].toString(),
                              ),
                              ReusableRow(
                                title: 'Latitude',
                                value: data[index]['address']['geo']['lat']
                                    .toString(),
                              ),
                              ReusableRow(
                                title: 'Longitude',
                                value: data[index]['address']['geo']['lng']
                                    .toString(),
                              ),
                            ],
                          ),
                        );
                      });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
