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
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.pinkAccent),
        ),
      ),
      home: MainTabController(),
    );
  }
}

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(text: 'Business Card'),
    Tab(text: 'Resume'),
    Tab(text: 'Predictor'),
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
          bottom: const TabBar(
            tabs: tabs,
          ),
        ),
        body: const TabBarView(
          children: screens,
        ),
      ),
    );
  }
}
