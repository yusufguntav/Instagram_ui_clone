import 'package:flutter/material.dart';
import 'package:instagram/notifications.dart';

import '../chats.dart';
import 'content.dart';

class homePage extends StatefulWidget {
  String profName;
  BottomNavigationBar bottomNavigationBar;
  homePage(
      {super.key, required this.profName, required this.bottomNavigationBar});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const notifications(),
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
                            profName: widget.profName,
                          )));
            },
            icon: const Icon(Icons.message_outlined),
          )
        ],
      ),
      // Content
      body: SafeArea(
        child: content(profname: widget.profName),
      ),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
