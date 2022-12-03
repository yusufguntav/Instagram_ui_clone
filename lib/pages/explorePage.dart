import 'package:flutter/material.dart';

class explorePage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  explorePage({super.key, required this.bottomNavigationBar});

  @override
  State<explorePage> createState() => _explorePageState();
}

class _explorePageState extends State<explorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        automaticallyImplyLeading: false,
      ),
      body: Text("Explore"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
