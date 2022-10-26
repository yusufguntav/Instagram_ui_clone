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
              bottom: const TabBar(tabs: [
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
            body: TabBarView(children: [
              Column(
                children: const [
                  Text("SarchBar will come"),
                ],
              ),
              const Text("dwapowda2"),
              const Text("dwapowda3"),
            ])),
      ),
    );
  }
}
