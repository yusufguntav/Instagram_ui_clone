// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  NotificationCard({
    Key? key,
    this.title = "",
    this.subtitle = "",
    this.txtcolor = Colors.white,
    this.bgcolor = Colors.black,
    this.buttonText = "",
    this.buttonOnpress,
  });
  String title;
  String subtitle;
  Color txtcolor;
  Color bgcolor;
  String buttonText;
  Function()? buttonOnpress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          // Avatar
          const Expanded(flex: 1, child: CircleAvatar()),
          Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                    style: TextStyle(color: txtcolor),
                  ),
                  // Subtitle
                  Text(
                    subtitle,
                    style: TextStyle(color: txtcolor),
                  ),
                ],
              )),
          // Button (if any)
          (buttonOnpress != null)
              ? Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: buttonOnpress,
                    child: Text(buttonText),
                  ),
                )
              : const Expanded(
                  flex: 2,
                  child: SizedBox(),
                )
        ],
      ),
    );
  }
}
