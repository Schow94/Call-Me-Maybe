import 'package:flutter/material.dart';
import 'package:project3/screens/business_card_screen.dart';
import 'package:project3/screens/resume_screen.dart';
import 'package:project3/screens/predictor_screen.dart';

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
          headline3: TextStyle(color: Colors.teal[300]),
        ),
      ),
      home: const MainTabController(),
    );
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.credit_card)),
    Tab(icon: Icon(Icons.event_note)),
    Tab(icon: Icon(Icons.question_mark)),
  ];

  static const screens = [
    BusinessCard(),
    Resume(),
    Predictor(),
  ];

  const MainTabController({Key? key}) : super(key: key);

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
