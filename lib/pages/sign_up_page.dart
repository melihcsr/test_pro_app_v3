import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController =
      TextEditingController();
  final TextEditingController reWriteRegisterPasswordController =
      TextEditingController();
  int deger = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 26, 12, 119),
                  ),
                  height: 60,
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          deger = 1;
                        }),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: deger == 1
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            width: 150,
                            height: 40,
                            child: Center(
                                child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color:
                                      deger == 1 ? Colors.black : Colors.white,
                                  fontSize: 20),
                            ))),
                      ),
                      GestureDetector(
                        onTap: () => setState(() {
                          deger = 2;
                        }),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: deger == 2
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                            width: 150,
                            height: 40,
                            child: Center(
                                child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color:
                                      deger == 2 ? Colors.black : Colors.white,
                                  fontSize: 20),
                            ))),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              if (deger == 1)
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Email",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  controller: registerEmailController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                            const Text("Create Password",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  obscureText: true,
                                  controller: registerPasswordController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                            const Text("Re-write Password",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: SizedBox(
                                height: 40,
                                child: TextField(
                                  obscureText: true,
                                  controller: reWriteRegisterPasswordController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  text:
                                      "Curablur lobortis id lorem id bibendum Ut id consectetur magna.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: ' Terms Of Use',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.blue,
                                          color: Colors.blue,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: ' auge enim,pulnivar',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: ' Privacy Notice',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.blue,
                                          color: Colors.blue,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: 'lacina at.',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        )),
                                  ]),
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 49, 68, 159),
                                ),
                                onPressed: () {},
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 14.0, horizontal: 100),
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ])),
                ),
              if (deger == 2)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              controller: loginEmailController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            ),
                          ),
                        ),
                        const Text("Password",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              obscureText: true,
                              controller: loginPasswordController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                            ),
                          ),
                        ),
                        const Center(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                color: Color.fromRGBO(153, 153, 153, 1)),
                          ),
                        ),
                        const Spacer(),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 49, 68, 159),
                            ),
                            onPressed: () async {},
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 14.0, horizontal: 100),
                                child: Text(
                                  "Continue",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40)
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
