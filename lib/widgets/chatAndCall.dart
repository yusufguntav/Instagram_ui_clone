// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';

class ChatAndCall extends StatelessWidget {
  int lanaOrDuke;
  ChatAndCall({super.key, this.lanaOrDuke = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                ProfilePhoto(
                    photo: (lanaOrDuke % 2 == 0)
                        ? "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"
                        : "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg"),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (lanaOrDuke % 2 == 0)
                          ? Text(
                              "Duke Mcgrath",
                              style: TextStyle(color: contentTextColor),
                            )
                          : Text(
                              "Lana Robin",
                              style: TextStyle(color: contentTextColor),
                            ),
                      const Text("Active Today",
                          style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 174)))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_enhance_outlined,
                color: contentTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
