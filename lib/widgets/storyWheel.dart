// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';

class StoryWheel extends StatefulWidget {
  StoryWheel({super.key, required this.imageSrc});
  List<String> imageSrc;
  @override
  State<StoryWheel> createState() => _StoryWheelState();
}

class _StoryWheelState extends State<StoryWheel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < widget.imageSrc.length; i++) ...[
            Container(
                margin: const EdgeInsets.only(left: 7),
                child: ProfilePhoto(photo: widget.imageSrc[i]))
          ]
        ],
      ),
    );
  }
}
