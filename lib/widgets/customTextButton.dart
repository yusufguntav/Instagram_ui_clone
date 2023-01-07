// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  Function() onpress;
  Color bgColor;
  List<Widget> content;
  CustomTextButton({
    super.key,
    required this.content,
    required this.onpress,
    this.bgColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        color: bgColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: content,
        ),
      ),
    );
  }
}
