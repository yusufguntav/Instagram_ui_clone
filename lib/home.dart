import 'package:flutter/material.dart';
import 'package:instagram/chats.dart';
import 'package:insta_like_button/insta_like_button.dart';
import 'package:instagram/notifications.dart';
import 'package:instagram/widgets/bottomNavigationBar.dart';
import 'package:instagram/pages/content.dart';
import 'package:instagram/pages/explorePage.dart';
import 'package:instagram/pages/homePage.dart';
import 'package:instagram/pages/igtvPage.dart';
import 'package:instagram/pages/profilePage.dart';
import 'package:instagram/widgets/profilePhotoContent.dart';
import 'package:instagram/pages/shopPage.dart';

class Home extends StatefulWidget {
  final String profName;
  const Home({required this.profName, super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
        print(_selectedIndex);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (_selectedIndex == 0)
        ? homePage(
            bottomNavigationBar: bottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
            profName: widget.profName,
          )
        : (_selectedIndex == 1)
            ? explorePage(
                bottomNavigationBar: bottomNavBar(
                selectedIndex: _selectedIndex,
                onItemTapped: _onItemTapped,
              ))
            : (_selectedIndex == 2)
                ? igtvPage(
                    bottomNavigationBar: bottomNavBar(
                    selectedIndex: _selectedIndex,
                    onItemTapped: _onItemTapped,
                  ))
                : (_selectedIndex == 3)
                    ? shopPage(
                        bottomNavigationBar: bottomNavBar(
                        selectedIndex: _selectedIndex,
                        onItemTapped: _onItemTapped,
                      ))
                    : profilePage(
                        profName: widget.profName,
                        bottomNavigationBar: bottomNavBar(
                          selectedIndex: _selectedIndex,
                          onItemTapped: _onItemTapped,
                        ));
  }
}
