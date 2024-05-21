import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
                const Text("Let's Calculate Your Due Date",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Select how do you want to calculate your due date. You can change it later",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Based On",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownMenu<String>(
                  width: 370,
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
                const Text(
                  "Select a date",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Select Date",
                    suffixIcon: const Icon(
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
                const SizedBox(height: 300),
                // const Spacer(),
                SizedBox(
                  height: 80,
                  width: 380,
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
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
