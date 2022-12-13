import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';

class Content extends StatefulWidget {
  String profname;
  Content({super.key, required this.profname});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List<int> likedImageIndexes = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 1),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(5.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++) ...[
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: ProfilePhoto(
                        photo:
                            "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg",
                      ),
                    ),
                  ]
                ],
              ),
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  // Contents
                  for (int x = 1; x <= 6; x++) ...[
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          color: Colors.black,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ProfilePhoto(
                                  photo:
                                      "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg",
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  widget.profname,
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
                                  setState(
                                    () {
                                      if (!likedImageIndexes.contains(x)) {
                                        likedImageIndexes.add(x);
                                      }
                                    },
                                  );
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
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Icon(
                                      Icons.chat_bubble_outline_rounded,
                                      color: Colors.white,
                                    ),
                                  )),
                              const Expanded(
                                flex: 1,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 10,
                                child: SizedBox(),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.bookmark_add_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
