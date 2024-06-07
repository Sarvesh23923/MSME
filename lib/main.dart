// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:msme/ui/screens/add_report_screen.dart';
import 'package:msme/ui/screens/appointment.dart';
import 'package:msme/ui/screens/dashboard_screen.dart';
import 'package:msme/ui/screens/doctor_dashboard.dart';
import 'package:msme/ui/screens/doctor_profile_edit_screen.dart';
import 'package:msme/ui/screens/doctor_profile_screen.dart';
import 'package:msme/ui/screens/due_date_calculation_screen.dart';
import 'package:msme/ui/screens/exercise_screen.dart';
import 'package:msme/ui/screens/hospital_screen.dart';
import 'package:msme/ui/screens/language_Selection.dart';
import 'package:msme/ui/screens/login_screen.dart';
import 'package:msme/ui/screens/record_view_doctor.dart';
import 'package:msme/ui/screens/report_screen.dart';
import 'package:msme/ui/screens/user_selection_screen.dart';
import 'package:msme/ui/sheets/congratulations_sheet.dart';
import 'package:msme/ui/sheets/media_sheet.dart';
import 'package:msme/ui/sheets/navbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF811A74)),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}
