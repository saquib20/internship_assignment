import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internship_assignment/screens/SplashScreentwo.dart';

class SplasgScreen extends StatefulWidget {
  const SplasgScreen({super.key});

  @override
  State<SplasgScreen> createState() => _SplasgScreenState();
}

class _SplasgScreenState extends State<SplasgScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SplashScreentwo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6318AF),
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/images/splashscreen1.png',
            height: 300,
          ),
        ),
      ),
    );
  }
}
