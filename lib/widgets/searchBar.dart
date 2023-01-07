// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: contentTextColor),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: contentTextColor,
        style: TextStyle(color: contentTextColor),
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide()),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide()),
          icon: Icon(
            Icons.search,
            color: contentTextColor,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: contentTextColor),
        ),
      ),
    );
  }
}
