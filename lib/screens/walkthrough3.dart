import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class walkthrough3 extends StatefulWidget {
  const walkthrough3({super.key});

  @override
  State<walkthrough3> createState() => _walkthrough3State();
}

class _walkthrough3State extends State<walkthrough3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/pic3.png',
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
