// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/pages/cameraPage.dart';
import 'package:instagram/widgets/post.dart';
import 'package:instagram/widgets/storyWheel.dart';
import 'chats.dart';
import 'notifications.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String profName;

  BottomNavigationBar bottomNavigationBar;
  HomePage(
      {super.key, required this.profName, required this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    List<Post> postList = [];
    List<String> StoryImageList = [];
    for (var i = 0; i < 12; i++) {
      StoryImageList.add(
        "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg",
      );
    }
    for (var i = 0; i < 3; i++) {
      postList.add(Post(
          imageSrc:
              "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"));
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        titleTextStyle: TextStyle(color: contentTextColor),
        iconTheme: IconThemeData(color: contentTextColor),
        title: const Text(
          "İnstagram",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CameraPage(),
                  ));
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Notifications(),
                  ));
            },
            icon: const Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Chat(
                            profName: profName,
                          )));
            },
            icon: const Icon(Icons.message_outlined),
          )
        ],
      ),
      // Content
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoryWheel(imageSrc: StoryImageList),
              for (int i = 0; i < postList.length; i++) ...[postList[i]]
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
