import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:internship_assignment/screens/otp.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({super.key});

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/logo1.png",
                    height: 350,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    child: Image.asset(
                      'assets/images/1.png',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Login or SignUp',
                    style: TextStyle(
                      fontFamily: 'KaushanScript-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff787878),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpVerify()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 130),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color(0xff6318AF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "By continuing, you agree to our",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7B7B7B),
                          fontFamily: 'Capriola-Regular',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        "Terms of Service Privacy Policy",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7B7B7B),
                          fontFamily: 'Capriola-Regular',
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
