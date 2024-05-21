import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msme/ui/sheets/congratulations_sheet.dart';

const List<String> list = <String>[
  'First day of last period',
  'Estimated due date',
  'date of conception'
];

class DueDateCalculationScreen extends StatefulWidget {
  const DueDateCalculationScreen({super.key});

  @override
  State<DueDateCalculationScreen> createState() =>
      _DueDateCalculationScreenState();
}

class _DueDateCalculationScreenState extends State<DueDateCalculationScreen> {
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
                const SizedBox(
                  height: 30,
                ),
                Text("Let's Calculate Your Due Date",
                    style: GoogleFonts.inter(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Select how do you want to calculate your due date. You can change it later",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Based On",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownMenu<String>(
                  width: screenWidth / 1.13,
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Select the date",
                  style: GoogleFonts.inter(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownMenu<String>(
                  width: screenWidth / 1.13,
                  initialSelection: list.first,
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onSelected: (String? value) {
                    setState(() {});
                  },
                  dropdownMenuEntries:
                      list.map<DropdownMenuEntry<String>>((String value) {
                    return DropdownMenuEntry<String>(
                        value: value, label: value);
                  }).toList(),
                ),
                const SizedBox(height: 300),
                // const Spacer(),
                SizedBox(
                  height: 80,
                  width: 380,
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
                      child: Text(
                        'Continue',
                        style: GoogleFonts.inter(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () async {
                        _launchCongratulationsSheet();
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchCongratulationsSheet() async {
    Future<String?> future = showModalBottomSheet<String>(
        context: context,
        isScrollControlled: false,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return const CongratulationsSheet();
        });
  }
}
