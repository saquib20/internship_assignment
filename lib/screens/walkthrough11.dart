import 'package:flutter/material.dart';

import 'package:internship_assignment/screens/onboardin1.dart';
import 'package:internship_assignment/screens/walkthrough2.dart';
import 'package:internship_assignment/screens/walkthrough3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Walkthrough11(),
  ));
}

class Walkthrough11 extends StatefulWidget {
  const Walkthrough11({super.key});

  @override
  State<Walkthrough11> createState() => _Walkthrough11State();
}

class _Walkthrough11State extends State<Walkthrough11> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBoardingOne()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topRight,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(255, 130, 28, 231),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: 'Capriola-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/pic1.png',
                        height: 300,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Create Your Own Plate',
                      style: TextStyle(
                        fontFamily: 'Capriola-Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
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
              ),
              const walkthrough2(),
              const walkthrough3(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: const Alignment(0, 0.4),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),
          ),
          Positioned(
            bottom: 50,
            // left: 150,
            left: MediaQuery.of(context).size.width * 0.4,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBoardingOne()));
              },
              child: Container(
                alignment: Alignment.center,
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xFFE0D4EC),
                  //     offset: const Offset(8.0, 5.0),
                  //   ),
                  // ],
                  shape: BoxShape.circle,
                  color: Color(0xff6017AA),
                ),
                child: const Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       alignment: Alignment.center,
          //       child: InkWell(
          //         onTap: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => OnBoardingOne()));
          //         },
          //         // child: Container(
          //         //   width: 56,
          //         //   height: 56,
          //         //   decoration: BoxDecoration(
          //         //     boxShadow: [
          //         //       BoxShadow(
          //         //           color: Color(0xFFE0D4EC),
          //         //           offset: const Offset(8.0, 5.0))
          //         //     ],
          //         //     shape: BoxShape.circle,
          //         //     color: Color(0xff6017AA),
          //         //   ),
          //         //   child: Icon(
          //         //     Icons.arrow_right_alt_outlined,
          //         //     color: Colors.white,
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
