// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';

class BottomNavBar extends BottomNavigationBar {
  int selectedIndex;
  var onItemTapped;
  BottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped})
      : super(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: contentTextColor,
          backgroundColor: backgroundColor,
          type: BottomNavigationBarType.fixed,
          fixedColor: contentTextColor,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: "Home",
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.search),
                label: "Explore",
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.movie_outlined),
                label: "IGTV",
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: const Icon(Icons.shop),
                label: "Shop",
                backgroundColor: backgroundColor),
            BottomNavigationBarItem(
                icon: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg"),
                ),
                label: "Profile",
                backgroundColor: backgroundColor),
          ],
        );
}
