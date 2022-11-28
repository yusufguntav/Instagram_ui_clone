import 'package:flutter/material.dart';
import 'package:instagram/widgets/chatAndCall.dart';
import 'package:instagram/widgets/searchBar.dart';

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
                    const SizedBox(
                      height: 10,
                    ),
                    searchBar(),
                    for (int x = 1; x <= 10; x++) ...[
                      chatandCall(
                        lanaOrDuke: x,
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
                      chatandCall(
                        lanaOrDuke: x,
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
