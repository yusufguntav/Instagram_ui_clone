import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';
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
                icon: Icon(
                  Icons.arrow_back,
                  color: contentTextColor,
                )),
            title: Text(
              widget.profName,
              style: TextStyle(color: contentTextColor),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: contentTextColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: contentTextColor,
                  ))
            ],
            backgroundColor: backgroundColor,
            bottom: TabBar(indicatorColor: contentTextColor, tabs: const [
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
            color: backgroundColor,
            child: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const SearchBar(),
                    for (int x = 1; x <= 10; x++) ...[
                      ChatAndCall(
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
                        child: Text(
                          "Call friends",
                          style: TextStyle(
                              color: contentTextColor,
                              fontSize: 20,
                              fontFamily: "Arial",
                              fontWeight: FontWeight.bold),
                        )),
                    for (int x = 1; x <= 10; x++) ...[
                      ChatAndCall(
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
                      child: Text(
                        "Message requests",
                        style: TextStyle(color: contentTextColor, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Open a chat to get more info about who's messaging you. They won't know you've seen it until you accept.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: contentTextColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
