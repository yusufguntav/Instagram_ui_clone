import 'package:flutter/material.dart';

class bottomNavBar extends BottomNavigationBar {
  int selectedIndex;
  var onItemTapped;
  bottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped})
      : super(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.black),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Explore",
                  backgroundColor: Colors.black),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.movie_outlined),
                  label: "IGTV",
                  backgroundColor: Colors.black),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.shop),
                  label: "Shop",
                  backgroundColor: Colors.black),
              const BottomNavigationBarItem(
                  icon: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg")),
                  label: "Profile",
                  backgroundColor: Colors.black),
            ]);
}
