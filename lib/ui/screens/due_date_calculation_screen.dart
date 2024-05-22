import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:msme/ui/sheets/congratulations_sheet.dart';
import 'package:intl/intl.dart';

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
  final TextEditingController _selectDateController = TextEditingController();
  String dropdownValue = list.first;
  String? _selectedValue;
  DateTime? _selectedDate;

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
                  height: 30,
                ),
                 Text("Let's Calculate Your Due Date",
                    style: GoogleFonts.inter(
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                 SizedBox(
                  height: screenHeight * 0.03,
                ),
                 Text(
                  "Select how do you want to calculate your due date. You can change it later",
                  style: GoogleFonts.inter(
                    color: Colors.black, 
                    fontSize: screenWidth * 0.046
                  ),
                ),
                 SizedBox(
                  height: screenHeight * 0.02,
                ),
                 Text(
                  "Based On",
                  style: GoogleFonts.inter(
                    color: Colors.black, 
                    fontSize: screenWidth * 0.046
                  ),
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
                  "Select a date",
                  style: GoogleFonts.inter(
                    color: Colors.black, 
                    fontSize: screenWidth * 0.048
                  ),
                ),
                 SizedBox(
                  height: screenHeight * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Select Date",
                    suffixIcon:  Icon(
                      Icons.arrow_drop_down,
                      size: 22,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  controller: _selectDateController,
                  onTap: _presentDatePicker,
                ),
                 SizedBox(height: screenHeight * 0.2),
                //  Spacer(),
                SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              const Color(0xFF811A74)),
                          shape:
                          WidgetStateProperty.all<RoundedRectangleBorder>(
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
                        _launchCongratulationsSheet();
                      },
                    ),
                  ),
                ),
                 SizedBox(height: screenHeight * 0.09),
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

  void _presentDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        //  _selectedDate = pickedDate;
        _selectDateController.text = DateFormat.yMd().format(pickedDate);
      });
    });
  }
}
