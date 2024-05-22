import 'package:flutter/material.dart';
import 'package:msme/ui/screens/hospital_screen.dart';
import 'package:msme/ui/screens/login_screen.dart';
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
      home: Navbar(),
    );
  }
}
