// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme/ui/screens/dashboard_screen.dart';

class CongratulationsSheet extends StatefulWidget {
  const CongratulationsSheet({super.key});

  @override
  State<CongratulationsSheet> createState() => _CongratulationsSheetState();
}

class _CongratulationsSheetState extends State<CongratulationsSheet> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height / 2.5;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Congratulations🥳',
              style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/party_popper_image.svg',
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.1,
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                Text(
                  'We have estimated your due date \nas june 5th',
                  style: GoogleFonts.inter(fontSize: screenWidth * 0.035),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/pregnant_women_image.svg',
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.1,
                ),
                SizedBox(
                  width: screenHeight * 0.04,
                ),
                Text(
                  'This means you are 6 weeks pregnant',
                  style: GoogleFonts.inter(fontSize: screenWidth * 0.035),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/calendar_image.svg',
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.1,
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Text(
                  'This means you have 36 weeks left',
                  style: GoogleFonts.inter(fontSize: screenWidth * 0.035),
                )
              ],
            ),
            SizedBox(height: screenHeight * 0.04),
            Center(
              child: SizedBox(
                height: screenHeight / 5,
                width: screenWidth / 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF811A74)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ))),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.inter(
                        color: Colors.white, 
                        fontSize: 20
                      ),
                    ),
                    onPressed: () async {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreen()));
                      //should navigate to dashboard screen
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
