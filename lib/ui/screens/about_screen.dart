import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'due_date_calculation_screen.dart';

const List<String> list = <String>['Yes', 'No'];

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenWidth * 0.0,
                ),
                Text("Let's Complete Your Profile",
                    style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "Name",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: screenWidth * 0.05),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter Name'),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "Age",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: screenWidth * 0.05),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _ageController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter Age'),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "Are you pregnant",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: screenWidth * 0.05),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                DropdownMenu<String>(
                  width: screenWidth * 0.883,
                  initialSelection: list.first,
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "Do you have children",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: screenWidth * 0.05),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                DropdownMenu<String>(
                  width: screenWidth * 0.883,
                  initialSelection: list.first,
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onSelected: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
                 SizedBox(height: screenHeight * 0.09),
                //  Spacer(),
                SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF811A74)),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ))),
                      child:  Text(
                        'Continue',
                        style: GoogleFonts.inter(
                          color: Colors.white, 
                          fontSize: screenWidth * 0.06
                        ),
                      ),
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DueDateCalculationScreen()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
