// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
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
            onTap: () {},
            child: Column(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: SvgPicture.asset(
                    'assets/images/profile.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/images/notify.svg"))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: ListView(
          children: [
            Text(
              'Hello Dr. Prabhu !',
              style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.04, color: Colors.grey.shade700),
            ),
            SizedBox(
              height: screenHeight * 0.005,
            ),
            Text(
              "List of Patients",
              style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.06,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Column(
              children: [
                Container(
                  height: screenHeight / 6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF811A74))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF811A74)),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, top: 10),
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.1,
                            child: Image.asset(
                              'assets/images/placeholder1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("weeks:<weeks>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Name: <Name>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Text("Address: <Address>",
                              style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: SizedBox(
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("Button is Pressed ");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF811A74),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "View Records",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Container(
                  height: screenHeight / 6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF811A74))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF811A74)),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, top: 10),
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.1,
                            child: Image.asset(
                              'assets/images/placeholder1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("weeks:<weeks>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Name: <Name>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Text("Address: <Address>",
                              style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: SizedBox(
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("Button is Pressed ");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF811A74),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "View Records",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Container(
                  height: screenHeight / 6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF811A74))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF811A74)),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, top: 10),
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.1,
                            child: Image.asset(
                              'assets/images/placeholder1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("weeks:<weeks>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Name: <Name>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Text("Address: <Address>",
                              style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: SizedBox(
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("Button is Pressed ");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF811A74),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "View Records",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Container(
                  height: screenHeight / 6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF811A74))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFF811A74)),
                                color: Colors.white),
                            margin: EdgeInsets.only(left: 0, top: 10),
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.1,
                            child: Image.asset(
                              'assets/images/placeholder1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("weeks:<weeks>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("Name: <Name>",
                                style: GoogleFonts.inter(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Text("Address: <Address>",
                              style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: SizedBox(
                              width: screenWidth * 0.5,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("Button is Pressed ");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF811A74),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "View Records",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
