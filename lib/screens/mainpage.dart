import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship_assignment/screens/dashboard/home.dart';
import 'package:internship_assignment/screens/dashboard/order.dart';
import 'package:internship_assignment/screens/dashboard/profile.dart';
import 'package:internship_assignment/screens/dashboard/wishlist.dart';
import 'package:awesome_icons/awesome_icons.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  int currentTab = 0;
  final List<Widget> screens = [
    const Home(),
    const Wishlist(),
    const Order(),
    const Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Hi, Monica",
                  style: TextStyle(
                    fontFamily: 'Capriola-Regular',
                    fontSize: 22,
                    color: Color(0xff6318AF),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Current Location",
                  style: TextStyle(
                    fontFamily: 'Capriola-Regular',
                    fontSize: 12,
                    color: Color(0xff7B7B7B),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: const Icon(
                      Icons.location_on,
                      size: 20,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: const Text(
                        "Hyderabad",
                        style: TextStyle(
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: const Icon(Icons.play_circle_fill_rounded),
                      ),
                      Container(
                        child: const Text(
                          "How it works?",
                          style: TextStyle(
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/food1.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "Enjoy your first order,"
                              "\nthe taste of our delicious"
                              "\nfood!",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/food1.png',
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "Enjoy your first order,"
                              "\nthe taste of our delicious"
                              "\nfood!",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search_rounded),
                    hintText: 'Search food or events',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Start crafting",
                  style: TextStyle(
                    fontFamily: 'Capriola-Regular',
                    fontSize: 22,
                    color: Color(0xff6318AF),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/food3.png",
                              )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Default Platters",
                            style: TextStyle(
                              fontFamily: 'Capriola-Regular',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/food4.png",
                              )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Craft Your Own",
                            style: TextStyle(
                              fontFamily: 'Capriola-Regular',
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 197,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.transparent),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                              ),
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/food5.png',
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "3 starters"
                                            "\n 3 main course"
                                            "\n 3 desserts"
                                            "\n 3drinks",
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Positioned(
                          left: 40,
                          bottom: 30,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.person),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Min 800")
                            ],
                          ),
                        ),
                        Positioned(
                          left: 40,
                          bottom: 5,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Starts at ₹ 777",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Color(0xff6318AF),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "Default Menu 1",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 197,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Positioned(
                              top: 30,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/food5.png',
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "3 starters"
                                          "\n 3 main course"
                                          "\n 3 desserts"
                                          "\n 3drinks",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Positioned(
                          left: 40,
                          bottom: 30,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.person),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Min 800")
                            ],
                          ),
                        ),
                        Positioned(
                          left: 40,
                          bottom: 5,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Starts at ₹ 777",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Color(0xff6318AF),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "Default Menu 1",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: 197,
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Positioned(
                              top: 30,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/food5.png',
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "3 starters"
                                          "\n 3 main course"
                                          "\n 3 desserts"
                                          "\n 3drinks",
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Positioned(
                          left: 40,
                          bottom: 30,
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Icon(Icons.person),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Min 800")
                            ],
                          ),
                        ),
                        Positioned(
                          left: 40,
                          bottom: 5,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Starts at ₹ 777",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Color(0xff6318AF),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "Default Menu 1",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Top Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/food6.png'),
                        ),
                        Container(
                          child: const Text(
                            "Starters",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/drink.png'),
                        ),
                        Container(
                          child: const Text(
                            "Drinks",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/rice.png'),
                        ),
                        Container(
                          child: const Text(
                            "Rice",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/curry.png'),
                        ),
                        Container(
                          child: const Text(
                            "Curry",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/food6.png'),
                        ),
                        Container(
                          child: const Text(
                            "Curry",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Starters",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        "More Starters",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6318AF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/chicken.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Grill Chicken",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/mushroom.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Mashroom Fry",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/mushroom.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Veggies Fry",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Main Course",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        "More Main Courses",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Capriola-Regular',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6318AF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/biryani.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Biryani",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/bread.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bread",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.transparent),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/food3.png",
                                )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Plain Rice",
                              style: TextStyle(
                                fontFamily: 'Capriola-Regular',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Capriola-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(
                    height: 600,
                    width: 600,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/images/service.png",
                            fit: BoxFit.cover,
                            width: 400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  "assets/images/badge.png",
                                  fit: BoxFit.cover,
                                  height: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Signature",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Capriola-Regular',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6318AF),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/images/sparkles.svg",
                                  fit: BoxFit.cover,
                                  height: 30,
                                ),
                              ),
                            ),
                            const Text(
                              "High Quality Disposable Cutlery",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/images/sparkles.svg",
                                  fit: BoxFit.cover,
                                  height: 30,
                                ),
                              ),
                            ),
                            const Text(
                              "Elegant Decorations & Table Settings",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/images/sparkles.svg",
                                  fit: BoxFit.cover,
                                  height: 30,
                                ),
                              ),
                            ),
                            const Text(
                              "Served by Waitstaff",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: SvgPicture.asset(
                                  "assets/images/sparkles.svg",
                                  fit: BoxFit.cover,
                                  height: 30,
                                ),
                              ),
                            ),
                            const Text(
                              "Best for Weddings, Corporate Events " "\netc",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Capriola-Regular',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: const Text(
                            "Know More",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Capriola-Regular',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff6318AF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "How does it work ?",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Capriola-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 700,
                child: Image.asset(
                  "assets/images/image.png",
                  fit: BoxFit.cover,
                  width: 60,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Delicious food with" "\nprofessional service !",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Capriola-Regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6318AF),
        onPressed: () {},
        child: Image.asset("assets/images/logo.png"),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.home,
                            color: Color(0xff7E7E7E),
                          ),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6318AF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.heart,
                            color: Color(0xff7E7E7E),
                          ),
                        ),
                        Text(
                          "Wishlist",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6318AF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.local_dining_outlined,
                            color: Color(0xff7E7E7E),
                          ),
                        ),
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6318AF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {});
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            color: Color(0xff7E7E7E),
                          ),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Capriola-Regular',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff6318AF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
