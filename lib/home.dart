import 'package:flutter/material.dart';
import 'package:instagram/chats.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:instagram/notifications.dart';

class Home extends StatefulWidget {
  final String profName;
  const Home({required this.profName, super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> likedImageIndexes = [];

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
                    builder: (context) => notifications(),
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 10; i++) ...[
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: const CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView(scrollDirection: Axis.vertical, children: [
                Column(children: [
                  Column(children: [
                    // Contents
                    for (int x = 1; x <= 6; x++) ...[
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            color: Colors.black,
                            child: Row(
                              children: [
                                const Expanded(
                                  flex: 1,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"),
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Text(
                                    widget.profName,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: const Icon(Icons.more_vert_outlined),
                                    color: Colors.white,
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InstaLikeButton(
                                  imageBoxfit: BoxFit.cover,
                                  image: const NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"),
                                  onChanged: (() {
                                    setState(() {
                                      if (!likedImageIndexes.contains(x)) {
                                        likedImageIndexes.add(x);
                                      }
                                    });
                                  }),
                                  iconColor: Colors.red,
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 2, right: 2, bottom: 2),
                            color: Colors.black,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    onPressed: () {
                                      if (likedImageIndexes.contains(x)) {
                                        likedImageIndexes.remove(x);
                                      } else {
                                        likedImageIndexes.add(x);
                                      }

                                      setState(() {});
                                    },
                                    icon: (likedImageIndexes.contains(x))
                                        ? const Icon(
                                            IconData(0xe25b,
                                                fontFamily: 'MaterialIcons'),
                                            color: Colors.red,
                                          )
                                        : const Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                          ),
                                  ),
                                ),
                                const Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.chat_bubble_outline_rounded,
                                      color: Colors.white,
                                    )),
                                const Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    )),
                                const Expanded(
                                  flex: 10,
                                  child: SizedBox(),
                                ),
                                const Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Icons.bookmark_add_outlined,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ])
                ]),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_outlined), label: "IGTV"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
              label: "Profile")
        ],
      ),
    );
  }
}
