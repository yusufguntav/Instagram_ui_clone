import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  String imageSrc;
  Post({super.key, required this.imageSrc});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 3,
      height: size.height / 4,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.network(
          widget.imageSrc,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
