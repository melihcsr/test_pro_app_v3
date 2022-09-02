import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_app_v3/pages/home_page.dart';
import 'package:test_pro_app_v3/pages/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_pro_app_v3/provider/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
