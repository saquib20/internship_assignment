import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internship_assignment/screens/walkthrough11.dart';

class SplashScreentwo extends StatefulWidget {
  const SplashScreentwo({super.key});

  @override
  State<SplashScreentwo> createState() => _SplashScreentwoState();
}

class _SplashScreentwoState extends State<SplashScreentwo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Walkthrough11()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6318AF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset('assets/images/splashscreen2.png'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 99,
          ),
          Positioned(
            // bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Center(),
                Text(
                  'Craft My Plate',
                  style: TextStyle(
                    fontFamily: 'Capriola-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xffF7E5B7),
                  ),
                ),
                Center(
                  child: Text(
                    'You customise, We cater',
                    style: TextStyle(
                      fontFamily: 'KaushanScript-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xffF7E5B7),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
