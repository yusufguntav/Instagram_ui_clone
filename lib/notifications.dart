import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                  ),
                  title: Text("Follow requests"),
                  subtitle: Text("Approve or ignore requests"),
                ),
                const Text("dwa"),
                const Text("dwa"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
