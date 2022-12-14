// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ContentAndNumber extends StatelessWidget {
  Color color;
  double size;
  int number;
  String content;
  ContentAndNumber(
      {super.key,
      required this.number,
      required this.content,
      this.size = 18,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
              fontSize: size, fontWeight: FontWeight.bold, color: color),
        ),
        Text(
          content.toString(),
          style: TextStyle(fontSize: size, color: color),
        )
      ],
    );
  }
}
