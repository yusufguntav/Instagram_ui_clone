import 'package:flutter/material.dart';
import 'package:instagram/pages/cameraPage.dart';
import 'chats.dart';
import 'content.dart';
import 'notifications.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String profName;

  BottomNavigationBar bottomNavigationBar;
  HomePage(
      {super.key, required this.profName, required this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
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
        child: Content(profname: profName),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
