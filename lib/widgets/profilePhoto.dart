import 'package:flutter/material.dart';

class profilePhoto extends StatelessWidget {
  double size;
  String photo;
  profilePhoto({super.key, this.size = 30, required this.photo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(radius: size, backgroundImage: NetworkImage(photo)),
    );
  }
}
