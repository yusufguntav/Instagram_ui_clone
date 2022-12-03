import 'package:flutter/material.dart';

class post extends StatefulWidget {
  String imageSrc;
  post({super.key, required this.imageSrc});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
