import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
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
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView(scrollDirection: Axis.vertical, children: [
                Column(children: [
                  Column(
                    children: [
                      // Content
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
                            const Expanded(
                              flex: 6,
                              child: Text(
                                "Canan Ergül",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: const Icon(Icons.more_vert_outlined),
                                color: Colors.white,
                                onPressed: () {
                                  print("test");
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.black,
                        child: Row(
                          children: const [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 10, child: SizedBox()),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      // Content
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
                            const Expanded(
                              flex: 6,
                              child: Text(
                                "Canan Ergül",
                                style: TextStyle(color: Colors.white),
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
                              child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.black,
                        child: Row(
                          children: const [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 10, child: SizedBox()),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      // content
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
                            const Expanded(
                              flex: 6,
                              child: Text(
                                "Canan Ergül",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: const Icon(Icons.more_vert_outlined),
                                color: Colors.white,
                                onPressed: () {
                                  print("test");
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/640px-Image_created_with_a_mobile_phone.png"))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        color: Colors.black,
                        child: Row(
                          children: const [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  color: Colors.white,
                                )),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 10, child: SizedBox()),
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      )
                    ],
                  )
                ]),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
