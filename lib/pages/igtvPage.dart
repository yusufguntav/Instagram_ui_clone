// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class IgtvPage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  IgtvPage({super.key, required this.bottomNavigationBar});

  @override
  State<IgtvPage> createState() => _IgtvPageState();
}

class _IgtvPageState extends State<IgtvPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IGTV"),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
