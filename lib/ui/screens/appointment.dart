// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios),
            ),
            title: Text(
              "Upcoming Appointments",
              style: GoogleFonts.inter(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent),
        body: ListView(children: [
          SizedBox(height: screenHeight * 0.02),
          Column(children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, top: 15),
                              child: Text(
                                "General Checkup",
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/calen-icon.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("25/05/2024",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/clock.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("09:00AM",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/location.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("Tiruchengode GH",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                ],
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child:
                                SvgPicture.asset("assets/images/checkup.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text("(Note: Please carry the previous report with you)",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            InkWell(
              onTap: () {},
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 40, top: 15),
                              child: Text(
                                "First Trimester Scan",
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/calen-icon.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("25/05/2024",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/clock.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("09:00AM",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/location.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("Tiruchengode GH",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                ],
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child: SvgPicture.asset("assets/images/scan.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text("(Note: Please carry the previous report with you)",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            InkWell(
              onTap: () {},
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, top: 15),
                              child: Text(
                                "General Checkup",
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/calen-icon.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("25/05/2024",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/clock.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("09:00AM",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/location.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("Tiruchengode GH",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                ],
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child:
                                SvgPicture.asset("assets/images/checkup.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text("(Note: Please carry the previous report with you)",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            InkWell(
              onTap: () {},
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, top: 15),
                              child: Text(
                                "General Checkup",
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/calen-icon.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("25/05/2024",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/clock.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("09:00AM",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/location.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("Tiruchengode GH",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                ],
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child:
                                SvgPicture.asset("assets/images/checkup.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text("(Note: Please carry the previous report with you)",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            InkWell(
              onTap: () {},
              child: Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: Offset(0, 4),
                          blurRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 15),
                              child: Text(
                                "Second Trimester Scan",
                                style: GoogleFonts.inter(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/calen-icon.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("25/05/2024",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/clock.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("09:00AM",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                  SizedBox(width: screenWidth * 0.02),
                                  SvgPicture.asset("assets/images/location.svg",
                                      width: 10),
                                  SizedBox(width: screenWidth * 0.005),
                                  Text("Tiruchengode GH",
                                      style: GoogleFonts.inter(
                                          fontSize: screenWidth * 0.02)),
                                ],
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child: SvgPicture.asset("assets/images/scan.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text("(Note: Please carry the previous report with you)",
                        style: GoogleFonts.inter(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.2),
          ])
        ]));
  }
}
