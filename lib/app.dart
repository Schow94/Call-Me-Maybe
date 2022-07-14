import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:project3/screens/business_card_screen.dart';
import 'package:project3/screens/resume_screen.dart';
import 'package:project3/screens/predictor_screen.dart';

const jsonFile = 'assets/data.json';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        fontFamily: 'Roboto Mono',
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.grey[600],
          ),
          headline3: const TextStyle(fontSize: 38.0),
          headline6: const TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(255, 18, 187, 189),
          ),
        ),
      ),
      home: MainTabController(),
    );
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.credit_card)),
    Tab(icon: Icon(Icons.event_note)),
    Tab(icon: Icon(Icons.question_mark)),
  ];

  MainTabController();

  static const screens = [
    BusinessCard(),
    Resume(),
    Predictor(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Call Me Maybe'),
        ),
        body: const TabBarView(
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
