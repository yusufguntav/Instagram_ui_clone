import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
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
        child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  "dwapğkdwa",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
