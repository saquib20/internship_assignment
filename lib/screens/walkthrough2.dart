import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class walkthrough2 extends StatefulWidget {
  const walkthrough2({super.key});

  @override
  State<walkthrough2> createState() => _walkthrough2State();
}

class _walkthrough2State extends State<walkthrough2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/pic2.png',
              height: 300,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Create Your Own Plate',
            style: TextStyle(
              fontFamily: 'Capriola-Regular',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.',
                style: TextStyle(
                  fontFamily: 'Capriola-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
