import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:project3/screens/business_card_screen.dart';
import 'package:project3/screens/resume_screen.dart';
import 'package:project3/screens/predictor_screen.dart';

const json_file = 'assets/data.json';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Color.fromARGB(255, 248, 248, 248),
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.grey[600]),
          // headline3: TextStyle(color: Colors.teal[300]),
          headline6: TextStyle(color: Color.fromARGB(255, 18, 187, 189)),
        ),
      ),
      home: MainTabController(),
    );
  }
}

class MainTabController extends StatelessWidget {
  final Map<String, dynamic> data = {};
  String name = '';

  static const tabs = [
    Tab(icon: Icon(Icons.credit_card)),
    Tab(icon: Icon(Icons.event_note)),
    Tab(icon: Icon(Icons.question_mark)),
  ];

  MainTabController();

  // ----------------- Not sure if this should be saved to state -----------------
// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString(json_file);
    final data = await json.decode(response);
    name = data['name'];
  }

  static const screens = [
    BusinessCard(),
    Resume(),
    Predictor(),
  ];

  @override
  Widget build(BuildContext context) {
    // readJson();
    // print('JSON DATA: $name');

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Call Me Maybe'),
        ),
        body: TabBarView(
          children: screens,
        ),
        bottomNavigationBar: Container(
          color: Colors.teal[400],
          child: const TabBar(
            tabs: tabs,
          ),
        ),
      ),
    );
  }
}
