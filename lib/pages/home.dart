import 'package:flutter/material.dart';
import 'package:instagram/widgets/bottomNavigationBar.dart';
import 'package:instagram/pages/explorePage.dart';
import 'package:instagram/pages/homePage.dart';
import 'package:instagram/pages/igtvPage.dart';
import 'package:instagram/pages/profilePage.dart';
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (_selectedIndex == 0)
        ? HomePage(
            bottomNavigationBar: BottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
            profName: widget.profName,
          )
        : (_selectedIndex == 1)
            ? ExplorePage(
                bottomNavigationBar: BottomNavBar(
                selectedIndex: _selectedIndex,
                onItemTapped: _onItemTapped,
              ))
            : (_selectedIndex == 2)
                ? IgtvPage(
                    bottomNavigationBar: BottomNavBar(
                    selectedIndex: _selectedIndex,
                    onItemTapped: _onItemTapped,
                  ))
                : (_selectedIndex == 3)
                    ? ShopPage(
                        bottomNavigationBar: BottomNavBar(
                        selectedIndex: _selectedIndex,
                        onItemTapped: _onItemTapped,
                      ))
                    : ProfilePage(
                        profName: widget.profName,
                        bottomNavigationBar: BottomNavBar(
                          selectedIndex: _selectedIndex,
                          onItemTapped: _onItemTapped,
                        ));
  }
}
