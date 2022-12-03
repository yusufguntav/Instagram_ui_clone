import 'package:flutter/material.dart';

class igtvPage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  igtvPage({super.key, required this.bottomNavigationBar});

  @override
  State<igtvPage> createState() => _igtvPageState();
}

class _igtvPageState extends State<igtvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IGTV"),
        automaticallyImplyLeading: false,
      ),
      body: Text("IGTV PAGE"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
