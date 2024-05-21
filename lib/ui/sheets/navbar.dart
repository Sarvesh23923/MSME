// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color.fromRGBO(237, 237, 237, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                _onItemTapped(0);
              },
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                width: 25,
                color: _selectedIndex == 0
                    ? Color.fromRGBO(129,26,116,1)
                    : Colors.black.withOpacity(1), 
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                _onItemTapped(1);
              },
              icon: SvgPicture.asset(
                "assets/images/progress.svg",
                width: 25,
                color: _selectedIndex == 1
                    ? Color.fromRGBO(129,26,116,1) 
                    : Colors.black.withOpacity(1), 
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                _onItemTapped(2);
              },
              icon: SvgPicture.asset(
                "assets/images/calender.svg",
                width: 25,
                color: _selectedIndex == 2
                    ? Color.fromRGBO(129,26,116,1)
                    : Colors.black.withOpacity(1), 
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                _onItemTapped(3);
              },
              icon: SvgPicture.asset(
                "assets/images/profile.svg",
                width: 25,
                color: _selectedIndex == 3
                    ? Color.fromRGBO(129,26,116,1)
                    : Colors.black.withOpacity(1), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
