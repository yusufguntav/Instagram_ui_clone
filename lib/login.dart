import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String profName = "yusufguntav";
  String password = "123456";
  TextEditingController userNameCont = TextEditingController()
    ..text = "yusufguntav";
  TextEditingController passwordCont = TextEditingController()..text = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Instagram',
                style:
                    GoogleFonts.shalimar(fontSize: 100, color: Colors.white)),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: TextField(
                controller: userNameCont,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  // Wİll be change
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: "User Name",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: TextField(
                controller: passwordCont,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Colors.white),
                  // Wİll be change
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),

                  labelText: "Password",
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  if (userNameCont.text == profName &&
                      passwordCont.text == password) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(
                            profName: profName,
                          ),
                        ));
                  } else {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                            title: Text('Username or password is incorrect')));
                  }
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      )),
    );
  }
}
