// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';

import '../assets/customColors.dart';

class Post extends StatefulWidget {
  String imageSrc;
  Post({super.key, required this.imageSrc});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          color: backgroundColor,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ProfilePhoto(
                  photo: widget.imageSrc,
                  size: 20,
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  "widget.profname",
                  style: TextStyle(color: contentTextColor),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  color: contentTextColor,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        // Image
        Row(
          children: [
            Expanded(
              child: InstaLikeButton(
                imageBoxfit: BoxFit.cover,
                image: const NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"),
                onChanged: (() {}),
                iconColor: Colors.red,
              ),
            )
          ],
        ),
        // Actions
        Container(
          padding: const EdgeInsets.symmetric(vertical: 3),
          color: backgroundColor,
          child: Row(
            children: [
              Expanded(
                  child: Icon(
                Icons.favorite_border_outlined,
                color: contentTextColor,
              )),
              Expanded(
                  child: Icon(
                Icons.message_outlined,
                color: contentTextColor,
              )),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.send),
                  color: contentTextColor,
                  onPressed: () {},
                ),
              ),
              const Spacer(
                flex: 8,
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(Icons.bookmark_add_outlined),
                  color: contentTextColor,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
