import 'package:flutter/material.dart';

class profilePhoto extends StatelessWidget {
  double size;
  String photo;
  String content;
  profilePhoto(
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
              style: TextStyle(fontSize: size / 2.2, color: Colors.white),
            ),
          )
        ]
      ],
    );
  }
}
