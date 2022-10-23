import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Instagram',
                style:
                    GoogleFonts.shalimar(fontSize: 100, color: Colors.black)),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: TextField(
                controller: username_controller,
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Name",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
              child: TextField(
                controller: password_controller,
                cursorColor: Colors.black,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (username_controller.text == "Yusuf" &&
                      password_controller.text == "123456") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  } else {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                            title: Text('Username or password is incorrect')));
                  }
                },
                child: const Text("Giriş"))
          ],
        ),
      )),
    );
  }
}
