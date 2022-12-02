import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/home.dart';
import 'package:instagram/widgets/textBox.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String profName = "yusufguntav";
  String password = "123456";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: Center(
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
                        fontSize: 80, color: Colors.white)),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: textBox(
                    TEC: usernameController,
                    hint_text: "Phone number, username or email address",
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: textBox(
                    TEC: passwordController,
                    hint_text: "Password",
                    isPassword: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: (() {
                    if (usernameController.text.toString() == profName &&
                        passwordController.text.toString() == password) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(profName: profName)));
                    } else {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => const AlertDialog(
                              title:
                                  Text('Username or password is incorrect')));
                    }
                  }),
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 151, 255)),
                )
              ],
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
