import 'package:flutter/material.dart';
import 'package:internship_assignment/screens/SplashScreentwo.dart';
import 'package:internship_assignment/screens/Splashscree.dart';
import 'package:internship_assignment/screens/details.dart';
import 'package:internship_assignment/screens/mainpage.dart';
import 'package:internship_assignment/screens/onboardin1.dart';
import 'package:internship_assignment/screens/walkthrough11.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: SplasgScreen(),
    );
  }
}
