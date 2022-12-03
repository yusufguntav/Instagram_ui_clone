import 'package:flutter/material.dart';

class shopPage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  shopPage({super.key, required this.bottomNavigationBar});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
        automaticallyImplyLeading: false,
      ),
      body: Text("Shop Page"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
