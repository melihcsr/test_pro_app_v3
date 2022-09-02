import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pro_app_v3/pages/landing_page.dart';

class PersonInfoPage extends StatelessWidget {
  late String name;
  late int sexPreference;
  late int age;
  late int lenght;
  late int weight;
  PersonInfoPage({
    Key? key,
    required this.name,
    required this.sexPreference,
    required this.age,
    required this.lenght,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name => ${name}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "Age => ${age}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "Lenght => ${lenght}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              "Weight => ${weight}",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              sexPreference == 1
                  ? "Sex Preference : Woman"
                  : "Sex Preference : Man",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LandingPage()));
                },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
