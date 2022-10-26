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
  TextEditingController userNameCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

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
                controller: userNameCont,
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
                controller: passwordCont,
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
                child: const Text("Login"))
          ],
        ),
      )),
    );
  }
}
