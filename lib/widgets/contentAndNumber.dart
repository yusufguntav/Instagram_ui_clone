import 'package:flutter/material.dart';

class contentAndNumber extends StatelessWidget {
  Color color;
  double size;
  int number;
  String content;
  contentAndNumber(
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
          this.number.toString(),
          style: TextStyle(
              fontSize: size, fontWeight: FontWeight.bold, color: color),
        ),
        Text(
          this.content.toString(),
          style: TextStyle(fontSize: size, color: color),
        )
      ],
    );
  }
}
