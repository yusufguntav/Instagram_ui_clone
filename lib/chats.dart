import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  final String profName;
  const Chat({required this.profName, super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              title: Text(
                widget.profName,
                style: const TextStyle(color: Colors.white),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ))
              ],
              backgroundColor: Colors.black,
              bottom: const TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Calls",
                ),
                Tab(
                  text: "Requests",
                ),
              ]),
            ),
            body: Container(
              color: Colors.black,
              child: TabBarView(children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const Text("Search Bar will come",
                        style: TextStyle(color: Colors.white)),
                    for (int x = 1; x <= 10; x++) ...[
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: (x % 2 == 0)
                                          ? const NetworkImage(
                                              "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")
                                          : const NetworkImage(
                                              "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg"),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        (x % 2 == 0)
                                            ? const Text(
                                                "Duke Mcgrath",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            : const Text(
                                                "Lana Robin",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                        const Text("Active Today",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 174, 174, 174)))
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
                                icon: const Icon(
                                  Icons.camera_enhance_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ]
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, top: 5),
                        child: const Text(
                          "Call friends",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Arial",
                              fontWeight: FontWeight.bold),
                        )),
                    for (int x = 1; x <= 10; x++) ...[
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: (x % 2 == 0)
                                          ? const NetworkImage(
                                              "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")
                                          : const NetworkImage(
                                              "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg"),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        (x % 2 == 0)
                                            ? const Text(
                                                "Duke Mcgrath",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            : const Text(
                                                "Lana Robin",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                        const Text("Active Today",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 174, 174, 174)))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.phone,
                                        color: Colors.white),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.video_call_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 5),
                      child: const Text(
                        "Message requests",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "Open a chat to get more info about who's messaging you. They won't know you've seen it until you accept.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ]),
            )),
      ),
    );
  }
}
