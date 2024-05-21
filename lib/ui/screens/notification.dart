// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Notification",
          style: GoogleFonts.inter(
            fontSize: screenWidth * 0.055,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          SizedBox(height: screenHeight * 0.05),
          
          Column(
            children: [
              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Water",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-1.svg")
                  ]
                )
              ),

              SizedBox(height: screenHeight * 0.03),

              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Medicines",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-2.svg")
                  ]
                )
              ),

              SizedBox(height: screenHeight * 0.03),
              
              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Water",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-1.svg")
                  ]
                )
              ),

              SizedBox(height: screenHeight * 0.03),

              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Medicines",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-2.svg")
                  ]
                )
              ),

              SizedBox(height: screenHeight * 0.03),
              
              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Water",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-1.svg")
                  ]
                )
              ),

              SizedBox(height: screenHeight * 0.03),

              Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(1,4),
                      blurRadius: 3
                    ),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                              "It's Time To take Some Medicines",
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: screenWidth * 0.035,
                                fontWeight: FontWeight.w600
                              )
                            ),

                        SizedBox(height: screenHeight * 0.01),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Text(
                            "Staying hydrated during pregnancy is crucial for both the expectant mother and the developing baby.",
                            style: GoogleFonts.inter(
                              fontSize: screenWidth * 0.025,
                              color: Colors.black
                            )
                          ),
                        )
                      ]
                    ),
                    SvgPicture.asset("assets/images/notif-2.svg")
                  ]
                )
              ),
              SizedBox(height: screenHeight * 0.1)
            ],
          ),
        ]
      )
    );
  }
}