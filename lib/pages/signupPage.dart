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

  TextEditingController controllerFullName = TextEditingController();

  TextEditingController controllerUsername = TextEditingController();

  TextEditingController controllerEmail = TextEditingController();

  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: loginBackgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Instagram',
                    style: GoogleFonts.shalimar(
                        fontSize: 80, color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllerEmail,
                    label_text: "Email",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllerFullName,
                    label_text: "Full Name",
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextBox(
                      label_text: "Username",
                      TEC: controllerUsername,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextBox(
                    TEC: controllerPassword,
                    label_text: "Password",
                    isPassword: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      for (var user in await readUsers().first) {
                        userNames.add(user.username);
                        emails.add(user.email);
                      }
                      if (userNames.contains(controllerUsername.text)) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => const AlertDialog(
                            title: Text(
                                "This username isn't available. Please try another."),
                          ),
                        );
                      } else if (emails.contains(controllerEmail.text)) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => const AlertDialog(
                            title: Text(
                                "Another account is using the same email."),
                          ),
                        );
                      } else {
                        String encryptedPassword =
                            EncryptData.encryptAES(controllerPassword.text);
                        createUser(
                            userFullName: controllerFullName.text,
                            username: controllerUsername.text,
                            Email: controllerEmail.text,
                            password: encryptedPassword);
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) =>
                                const AlertDialog(
                                  title: Text("Account created!"),
                                ));
                      }
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 151, 255),
                  ),
                  child: const Text(
                    "Sign up!",
                    style: TextStyle(color: Colors.white),
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
