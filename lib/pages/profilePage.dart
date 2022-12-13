import 'package:flutter/material.dart';
import 'package:instagram/widgets/contentAndNumber.dart';
import 'package:instagram/widgets/post.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';

class ProfilePage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  String profName;
  ProfilePage(
      {super.key, required this.bottomNavigationBar, required this.profName});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 12, 12),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            widget.profName,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.density_medium,
                  color: Colors.white,
                ))
          ],
          backgroundColor: Colors.black,
        ),
        body:
            // Account info
            SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ProfilePhoto(
                            size: 45,
                            photo:
                                "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.profName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: ContentAndNumber(number: 8, content: "Posts")),
                  Expanded(
                      child:
                          ContentAndNumber(number: 672, content: "Followers")),
                  Expanded(
                      child:
                          ContentAndNumber(number: 258, content: "Following")),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            side: const BorderSide(
                                width: .2, color: Colors.white)),
                        child: const Text(
                          "Edit profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            side: const BorderSide(
                                width: .2, color: Colors.white)),
                        child: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // Stories
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i <= 2; i++) ...[
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: ProfilePhoto(
                              content: "holiday",
                              photo:
                                  "https://images.pexels.com/photos/2873992/pexels-photo-2873992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: ProfilePhoto(
                              content: "nature",
                              photo:
                                  "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        )
                      ]
                    ],
                  ),
                ),
              ),
              // Posts
              Column(
                children: [
                  for (int x = 0; x < 2; x++) ...[
                    Row(
                      children: [
                        Post(
                            imageSrc:
                                "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        Post(
                            imageSrc:
                                "https://images.unsplash.com/photo-1498598457418-36ef20772bb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                        Post(
                            imageSrc:
                                "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                      ],
                    ),
                    Row(
                      children: [
                        Post(
                            imageSrc:
                                "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000"),
                        Post(
                            imageSrc:
                                "https://img.freepik.com/free-photo/flat-lay-batch-cooking-composition_23-2148765597.jpg?w=2000"),
                        Post(
                            imageSrc:
                                "https://images.unsplash.com/photo-1498598457418-36ef20772bb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                      ],
                    ),
                  ]
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: widget.bottomNavigationBar,
      ),
    );
  }
}
