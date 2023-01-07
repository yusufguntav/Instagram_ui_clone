// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  ExplorePage({super.key, required this.bottomNavigationBar});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
        automaticallyImplyLeading: false,
      ),
      body: const Text("Explore"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
