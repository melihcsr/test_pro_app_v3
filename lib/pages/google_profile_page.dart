import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_app_v3/provider/google_sign_in.dart';

class GoogleProfilePage extends StatefulWidget {
  const GoogleProfilePage({Key? key}) : super(key: key);

  @override
  State<GoogleProfilePage> createState() => _GoogleProfilePageState();
}

class _GoogleProfilePageState extends State<GoogleProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logOut();
              },
              child: Text("Logout")),
        ],
        backgroundColor: Color.fromARGB(255, 51, 51, 51),
        title: Text("Logged in"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Profile",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            height: 32,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL.toString()),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Name : ${user.displayName}",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Email : ${user.email}",
            style: const TextStyle(color: Colors.white, fontSize: 24),
          )
        ],
      )),
    );
  }
}
