// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dynamic_timeline/dynamic_timeline.dart';
import 'package:intl/intl.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  String selectedDay = 'Monday';

  final Map<String, List<TimelineItem>> events = {
    'Monday': [
      TimelineItem(
        startDateTime: DateTime(1970, 1, 1, 7),
        endDateTime: DateTime(1970, 1, 1, 8),
        child: const Event(title: 'Event Monday'),
      ),
    ],
    'Wednesday': [
      TimelineItem(
        startDateTime: DateTime(1970, 1, 1, 10),
        endDateTime: DateTime(1970, 1, 1, 12),
        child: const Event(title: 'Event Wednesday'),
      ),
    ],
    'Friday': [
      TimelineItem(
        startDateTime: DateTime(1970, 1, 1, 15),
        endDateTime: DateTime(1970, 1, 1, 17),
        child: const Event(title: 'Event Friday'),
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 22,
            )),
        title: Text(
          "Timeline",
          style: GoogleFonts.inter(
            fontSize: screenWidth * 0.06,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DayButton(
                  day: '1st Week',
                  isSelected: selectedDay == '1st Week',
                  onTap: () => setState(() => selectedDay = '1st Week'),
                ),
                DayButton(
                  day: '2nd Week',
                  isSelected: selectedDay == '2nd Week',
                  onTap: () => setState(() => selectedDay = '2nd Week'),
                ),
                DayButton(
                  day: '3rd Week',
                  isSelected: selectedDay == '3rd Week',
                  onTap: () => setState(() => selectedDay = '3rd Week'),
                ),
                DayButton(
                  day: '4thh Week',
                  isSelected: selectedDay == '4thh Week',
                  onTap: () => setState(() => selectedDay = '4thh Week'),
                ),
                DayButton(
                  day: '5th Week',
                  isSelected: selectedDay == '5th Week',
                  onTap: () => setState(() => selectedDay = '5th Week'),
                ),
                DayButton(
                  day: '6th Week',
                  isSelected: selectedDay == '6th Week',
                  onTap: () => setState(() => selectedDay = '6th Week'),
                ),
                DayButton(
                  day: '7th Week',
                  isSelected: selectedDay == '7th Week',
                  onTap: () => setState(() => selectedDay = '7th Week'),
                ),
                DayButton(
                  day: '8th Week',
                  isSelected: selectedDay == '8th Week',
                  onTap: () => setState(() => selectedDay = '8th Week'),
                ),
                DayButton(
                  day: '9th Week',
                  isSelected: selectedDay == '9th Week',
                  onTap: () => setState(() => selectedDay = '9th Week'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: screenHeight * 0.05),
                DynamicTimeline(
                  firstDateTime: DateTime(1970, 1, 1, 7),
                  lastDateTime: DateTime(1970, 1, 1, 22),
                  labelBuilder: (dateTime) => DateFormat('HH:mm').format(dateTime),
                  intervalDuration: const Duration(hours: 1),
                  items: events[selectedDay] ?? [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DayButton extends StatelessWidget {
  final String day;
  final bool isSelected;
  final VoidCallback onTap;

  const DayButton({
    Key? key,
    required this.day,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade100 : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            day,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

class Event extends StatelessWidget {
  final String title;
  const Event({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(title, style: TextStyle(fontSize: 16))),
      ),
    );
  }
}
