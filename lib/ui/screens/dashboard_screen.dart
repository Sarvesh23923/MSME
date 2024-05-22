// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme/ui/screens/exercise_screen.dart';
import 'package:msme/ui/screens/hospital_screen.dart';
import 'package:msme/ui/screens/notification.dart';
import 'package:msme/ui/screens/timeline_screen.dart';
import 'package:msme/ui/sheets/navbar.dart';

import 'my_profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyProfileScreen()));
            },
            child: CircleAvatar(
              radius: 10,
              child: SvgPicture.asset(
                'assets/images/profile.svg',
              ),
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Notify()));
                  },
                  icon: SvgPicture.asset("assets/images/notify.svg"))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView(
          children: [
            Text(
              'Hello Sofi !',
              style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.056, color: Colors.grey.shade700),
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Text(
              '3rd week of your pregnancy',
              style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.06,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: screenHeight * 0.04),
            Center(
              child: DatePicker(
                height: screenHeight * 0.13,
                width: screenWidth * 0.15,
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                deactivatedColor: Colors.white,
                selectionColor: const Color(0xFF811A74),
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedDate = date;
                  });
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              height: screenHeight * 0.25,
              width: screenWidth * 0.1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 18.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromRGBO(129, 26, 116, 0.2),
                          radius: screenWidth * 0.1,
                          child: SvgPicture.asset(
                            'assets/images/maternal_image.svg',
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Text(
                          'Your baby is in the size of pear',
                          style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.035,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth * 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text(
                          "Baby Height",
                          style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.04,
                              color: Colors.grey.shade700),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Text("17 cm",
                            style: GoogleFonts.inter(
                                fontSize: screenWidth * 0.038,
                                fontWeight: FontWeight.w600)),
                      ]),
                      Column(children: [
                        Text(
                          "Baby Weight",
                          style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.04,
                              color: Colors.grey.shade700),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Text("110 gr",
                            style: GoogleFonts.inter(
                                fontSize: screenWidth * 0.038,
                                fontWeight: FontWeight.w600)),
                      ]),
                      Column(children: [
                        Text(
                          "Days Left",
                          style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.04,
                              color: Colors.grey.shade700),
                        ),
                        SizedBox(height: screenHeight * 0.015),
                        Text("168 days",
                            style: GoogleFonts.inter(
                                fontSize: screenWidth * 0.038,
                                fontWeight: FontWeight.w600)),
                      ]),
                    ],
                  )
                ],
              ),
            ),
            CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TimelineScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  offset: const Offset(0, 4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/time_line_image.svg',
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Text(
                                'Time line',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ExerciseScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  offset: const Offset(0, 4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/exercise_image.svg',
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Text(
                                'Exercise',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const HospitalScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  offset: const Offset(0, 4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/hospital_image.svg',
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Text(
                                'Hospital',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ExerciseScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  offset: const Offset(0, 4),
                                )
                              ],
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/food_image.svg',
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Text(
                                'Food',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
