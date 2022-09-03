import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_pro_app_v3/pages/person_info_page.dart';

class RegisterStepsPage extends StatefulWidget {
  final String nameValue;
  const RegisterStepsPage({
    Key? key,
    required this.nameValue,
  }) : super(key: key);

  @override
  State<RegisterStepsPage> createState() =>
      _RegisterStepsPageState(this.nameValue);
}

class _RegisterStepsPageState extends State<RegisterStepsPage> {
  late String name;
  _RegisterStepsPageState(this.name);
  final PageController controller = PageController(initialPage: 0);
  int value = 0;
  int pageIndex = 0;
  int sexPreference = 0;
  int age = 0;
  int lenght = 0;
  int weight = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 85,
                ),
                Row(
                  children: [
                    IconButton(
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Image.asset(
                  "images/logo_app.png",
                  width: 80,
                  height: 80,
                ),
                const SizedBox(height: 90),
                const Text(
                  "What is Your Sex?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            value = 1;
                            sexPreference = 1;
                            print("Gender:Woman");
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            width: 130,
                            height: 130,
                            child: Icon(
                              Icons.female,
                              size: 130,
                              color: value == 0 || value == 2
                                  ? Color.fromARGB(255, 158, 158, 158)
                                  : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Woman",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            value = 2;
                            sexPreference = 2;
                            print("Gender Man");
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            width: 130,
                            height: 130,
                            child: Icon(
                              Icons.male,
                              size: 130,
                              color: value == 1 || value == 0
                                  ? Color.fromARGB(255, 158, 158, 158)
                                  : Color.fromARGB(255, 6, 41, 69),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Man",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 54,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 49, 68, 159),
                  ),
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 700),
                        curve: Curves.easeInCubic);
                  },
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.0, horizontal: 100),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SmoothPageIndicator(controller: controller, count: 4),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                const SizedBox(height: 90),
                Row(
                  children: [
                    IconButton(
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Image.asset(
                  "images/logo_app.png",
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 30),
                const Text(
                  "How old are you?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 300,
                  child: CupertinoPicker(
                      itemExtent: 90,
                      onSelectedItemChanged: (index) {
                        age = index;
                        print("Age : ${age}");
                      },
                      children: [
                        for (int i = 0; i < 100; i++)
                          Center(child: Text(i.toString())),
                      ]),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 49, 68, 159),
                  ),
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeInCubic);
                  },
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.0, horizontal: 100),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SmoothPageIndicator(controller: controller, count: 4),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                const SizedBox(height: 90),
                Row(
                  children: [
                    IconButton(
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Image.asset(
                  "images/logo_app.png",
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 30),
                const Text(
                  "How much is your lenght?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoPicker(
                            itemExtent: 90,
                            onSelectedItemChanged: (index) {
                              lenght = index + 100;
                              print("Lenght:${lenght}");
                            },
                            children: [
                              for (int i = 100; i < 220; i++)
                                Center(
                                    child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                            ]),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 49, 68, 159),
                  ),
                  onPressed: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.easeInCubic);
                  },
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.0, horizontal: 100),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SmoothPageIndicator(controller: controller, count: 4),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                const SizedBox(height: 90),
                Row(
                  children: [
                    IconButton(
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                  ],
                ),
                Image.asset(
                  "images/logo_app.png",
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 30),
                const Text(
                  "How much is your weight?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoPicker(
                            itemExtent: 90,
                            onSelectedItemChanged: (index) {
                              weight = index + 20;
                              print("Weight:${weight}");
                            },
                            children: [
                              for (int i = 20; i < 200; i++)
                                Center(
                                    child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                )),
                            ]),
                      ),
                      const Text(
                        "kg",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 49, 68, 159),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonInfoPage(
                                name: name,
                                sexPreference: sexPreference,
                                age: age,
                                lenght: lenght,
                                weight: weight)));
                  },
                  child: const Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14.0, horizontal: 100),
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SmoothPageIndicator(controller: controller, count: 4),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
