// ignore_for_file: file_names

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/services/createUser.dart';
import 'package:instagram/services/readUsers.dart';
import 'package:instagram/utils/encyrpt.dart';
import 'package:instagram/widgets/textBox.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late List<String> userNames = [];
  late List<String> emails = [];
  // Email, FullName, Username, Password
  List<bool> isEmpty = [false, false, false, false];

  // Email, FullName, Username, Password
  List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyBackgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Instagram',
                    style: GoogleFonts.shalimar(
                        fontSize: 80, color: contentTextColor)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllers[0],
                    label_text: "Email",
                    error_text:
                        (isEmpty[0]) ? "The 'Email' field is empty" : "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllers[1],
                    label_text: "Full Name",
                    error_text:
                        (isEmpty[1]) ? "The 'Full Name' field is empty" : "",
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextBox(
                      label_text: "Username",
                      TEC: controllers[2],
                      error_text:
                          (isEmpty[2]) ? "The 'Username' field is empty" : "",
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllers[3],
                    label_text: "Password",
                    isPassword: true,
                    error_text:
                        (isEmpty[3]) ? "The 'Password' field is empty" : "",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      for (var i = 0; i < controllers.length; i++) {
                        if (controllers[i].text.isEmpty) {
                          isEmpty[i] = true;
                        } else {
                          isEmpty[i] = false;
                        }
                      }
                      if (!isEmpty.contains(true)) {
                        for (var user in await readUsers().first) {
                          userNames.add(user.username);
                          emails.add(user.email);
                        }
                        if (userNames.contains(controllers[2].text)) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                              title: Text(
                                  "This username isn't available. Please try another."),
                            ),
                          );
                        } else if (emails.contains(controllers[2].text)) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                              title: Text(
                                  "Another account is using the same email."),
                            ),
                          );
                        } else {
                          String encryptedPassword =
                              EncryptData.encryptAES(controllers[3].text);
                          createUser(
                              userFullName: controllers[1].text,
                              username: controllers[2].text,
                              Email: controllers[0].text,
                              password: encryptedPassword);
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                    title: Text("Account created!"),
                                  ));
                        }
                      } else {
                        setState(() {});
                      }
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 151, 255),
                  ),
                  child: Text(
                    "Sign up!",
                    style: TextStyle(color: contentTextColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
