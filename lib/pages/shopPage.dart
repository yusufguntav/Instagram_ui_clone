// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  BottomNavigationBar bottomNavigationBar;
  ShopPage({super.key, required this.bottomNavigationBar});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
        automaticallyImplyLeading: false,
      ),
      body: const Text("Shop Page"),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
