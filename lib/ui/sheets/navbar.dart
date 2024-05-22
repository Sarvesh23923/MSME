// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme/ui/screens/dashboard_screen.dart';
import 'package:msme/ui/screens/exercise_screen.dart';
import 'package:msme/ui/screens/my_profile_screen.dart';
import 'package:msme/ui/screens/report_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardScreen(),
    ReportScreen(),
    ExerciseScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF1A73E8),
          unselectedItemColor: const Color(0xFFA5A5A5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                width: 25,
                color: _currentIndex == 0
                    ? Color.fromRGBO(129, 26, 116, 1)
                    : Colors.black.withOpacity(1),
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/progress.svg",
                width: 25,
                color: _currentIndex == 1
                    ? Color.fromRGBO(129, 26, 116, 1)
                    : Colors.black.withOpacity(1),
              ),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/calender.svg",
                width: 25,
                color: _currentIndex == 2
                    ? Color.fromRGBO(129, 26, 116, 1)
                    : Colors.black.withOpacity(1),
              ),
              label: 'Exercise',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/profile.svg",
                width: 25,
                color: _currentIndex == 3
                    ? Color.fromRGBO(129, 26, 116, 1)
                    : Colors.black.withOpacity(1),
              ),
              label: 'My Profile',
            ),
          ],
        ));
  }
}
