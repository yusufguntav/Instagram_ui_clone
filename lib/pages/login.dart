import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/pages/signupPage.dart';
import 'package:instagram/services/readUsers.dart';
import 'package:instagram/utils/encyrpt.dart';
import 'package:instagram/widgets/textBox.dart';
import 'package:instagram/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String profName = "yusufguntav";
  String password = "123456";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginBackgroundColor,
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
                  child: TextBox(
                    TEC: usernameController,
                    hint_text: "Phone number, username or email address",
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
                  onPressed: (() async {
                    bool passed = false;
                    try {
                      for (var users in await readUsers().first) {
                        String decryptedPassword =
                            EncryptData.decryptAES(users.password.toString());

                        if (usernameController.text.toString() ==
                                users.username &&
                            passwordController.text.toString() ==
                                decryptedPassword) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Home(profName: users.username),
                            ),
                          );
                          passed = true;
                        }
                      }
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                    if (!passed) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => const AlertDialog(
                          title: Text('Username or password is incorrect'),
                        ),
                      );
                    } else {
                      passed = !passed;
                    }
                  }),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 151, 255),
                  ),
                  child: const Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
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
                  decoration: const BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.white))),
                  child: InkWell(
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ))),
                    child: const Text(
                      "Don't have an account ? Sign up!",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
