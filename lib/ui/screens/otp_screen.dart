import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:msme/ui/screens/reset_password_screen.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  OtpTimerButtonController controller = OtpTimerButtonController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Enter the OTP",
              style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Enter the OTP that we have sent to your \n registered mobile no",
              style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              margin: const EdgeInsets.all(10.0),
              numberOfFields: 4,
              fieldWidth: 60,
              fieldHeight: 60,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              borderColor: const Color(0xFF811A74),
              focusedBorderColor: const Color(0xFF811A74),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Verification Code",
                          style: GoogleFonts.inter()
                        ),
                        content: Text(
                          'Code entered is $verificationCode',
                          style: GoogleFonts.inter()
                        ),
                      );
                    });
              }, // end onSubmit
            ),
            const SizedBox(
              height: 10,
            ),
            OtpTimerButton(
              controller: controller,
              height: 60,
              text: Text(
                'Resend OTP in',
                style: GoogleFonts.inter(color: Colors.blue, fontSize: 16),
              ),
              duration: 60,
              radius: 30,
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              buttonType: ButtonType.text_button,
              loadingIndicator: const CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.red,
              ),
              loadingIndicatorColor: Colors.red,
              onPressed: () {},
            ),
            const Spacer(),
            SizedBox(
              height: 80,
              width: 380,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF811A74)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ))),
                  child: const Text(
                    'Verify',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen()));
                  },
                ),
              ),
            ),
            // const Spacer(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    ));
  }
}
