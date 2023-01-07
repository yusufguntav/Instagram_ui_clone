// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget(
      {super.key,
      required this.title,
      this.color = Colors.white,
      this.size = 20});
  String title;
  Color color;
  double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
