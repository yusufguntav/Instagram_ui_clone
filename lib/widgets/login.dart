// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/main.dart';
import 'package:instagram/widgets/textBox.dart';

import '../pages/signupPage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Future loginfunc() async {
      showDialog(
          context: context,
          builder: ((context) =>
              const Center(child: CircularProgressIndicator())));
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: usernameController.text, password: passwordController.text);
      } catch (e) {
        debugPrint(e.toString());
      }

      navigatorkey.currentState!.popUntil((route) => route.isFirst);
    }

    return Center(
      child: Column(
        children: [
          const Spacer(
            flex: 5,
          ),
          SingleChildScrollView(
            child: Expanded(
              flex: 2,
              child: Text('Instagram',
                  style: GoogleFonts.shalimar(
                      fontSize: 80, color: contentTextColor)),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: TextBox(
                  TEC: usernameController,
                  hint_text: "Email",
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: TextBox(
                  TEC: passwordController,
                  hint_text: "Password",
                  isPassword: true,
                ),
              ),
              ElevatedButton(
                onPressed: loginfunc,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 151, 255),
                ),
                child: Text(
                  "Log In",
                  style: TextStyle(color: contentTextColor),
                ),
              )
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: contentTextColor))),
                child: InkWell(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ))),
                  child: Text(
                    "Don't have an account ? Sign up!",
                    style: TextStyle(fontSize: 15, color: contentTextColor),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
