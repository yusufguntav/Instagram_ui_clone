import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: const TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide()),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide()),
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
