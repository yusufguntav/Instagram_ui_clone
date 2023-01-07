// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ImageGridView extends StatefulWidget {
  String imageSrc;
  ImageGridView({super.key, required this.imageSrc});

  @override
  State<ImageGridView> createState() => _ImageGridViewState();
}

class _ImageGridViewState extends State<ImageGridView> {
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
