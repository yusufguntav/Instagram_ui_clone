// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';

class ProfilePhoto extends StatelessWidget {
  double size;
  String photo;
  String content;
  ProfilePhoto(
      {super.key, this.size = 30, required this.photo, this.content = " "});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: CircleAvatar(
            radius: size,
            backgroundImage: NetworkImage(photo),
          ),
        ),
        if (content != " ") ...[
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              content,
              style: TextStyle(fontSize: size / 2.2, color: contentTextColor),
            ),
          )
        ]
      ],
    );
  }
}
