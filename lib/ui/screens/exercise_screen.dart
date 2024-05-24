// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExerciseScreen extends StatefulWidget {
  final int initialIndex;

  const ExerciseScreen({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  late int current;

  final List<String> trimesterTitles = [
    "Exercise",
    "Diet",
    "Unknown",
  ];

  final List<List<Map<String, String>>> trimesterContents = [
    [
      {"text": "Lean Meat", "description": "A good source of iron and protein, lean meats like turkey and chicken offer all of the amino acids that act as the building blocks for cells.", "image": "assets/images/google_image.svg"},
      {"text": "Yogurt", "description": "The calcium and protein in each cup supports bone structure. Opt for a variety with a short ingredient list and few added sugars.", "image": "assets/images/google_image.svg"},
      {"text": "Spinach", "description": "This dark leafy green offers a combo platter of nutrients, including fiber, calcium, folate, iron, vitamin A, vitamin C, vitamin E and vitamin K.", "image": "assets/images/google_image.svg"},
      {"text": "Spinach", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Spinach", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
    ],
    [
      {"text": "Shashankasana", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana", "description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
    ],
    [
      {"text": "3rd Trimester", "description": "Content 1", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester", "description": "Content 2", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester", "description": "Content 3", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester", "description": "Content 4", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester", "description": "Content 5", "image": "assets/images/google_image.svg"},
    ],
  ];

  @override
  void initState() {
    super.initState();
    current = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          trimesterTitles[current], // Use current index to get title
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: screenWidth * 0.06,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: screenHeight * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              trimesterButton("1st Trimester", 0, screenWidth, screenHeight),
              trimesterButton("2nd Trimester", 1, screenWidth, screenHeight),
              trimesterButton("3rd Trimester", 2, screenWidth, screenHeight),
            ],
          ),
          ListView(
            padding: EdgeInsets.all(16),
            shrinkWrap: true, // Add this line
            physics: NeverScrollableScrollPhysics(), // Add this line
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset(0.0, 0.0),
                    ).animate(animation),
                    child: child,
                  );
                },
                child: getTrimesterContent(current),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget trimesterButton(String text, int index, double screenWidth, double screenHeight) {
    return InkWell(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        width: screenWidth * 0.3,
        height: screenHeight * 0.05,
        decoration: BoxDecoration(
          color: current == index 
              ? Color.fromRGBO(129, 26, 116, 1) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: screenWidth * 0.032,
              color: current == index
                  ? Colors.white : Colors.grey.shade600,
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          current = index;
        });
      },
    );
  }

  Widget getTrimesterContent(int index) {
    return Column(
      key: ValueKey<int>(index),
      children: trimesterContents[index].map((content) {
        // Check if the necessary keys are present and non-null
        final text = content["text"];
        final description = content["description"];
        final image = content["image"];

        if (text != null && description != null && image != null) {
          return buildContainer(text, description, image);
        } else {
          // Handle the case where any of the required values are null
          return Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Incomplete content data',
              style: GoogleFonts.inter(fontSize: 16, color: Colors.red),
            ),
          );
        }
      }).toList(),
    );
  }

  Widget buildContainer(String text, String description, String imgPath) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: screenWidth * 0.6, // Adjusted to avoid overflow
                child: Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: screenWidth * 0.03,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
          Spacer(), // Added to push the image to the right
          SvgPicture.asset(
            imgPath,
            width: screenWidth * 0.1, // Adjusted size
            height: screenHeight * 0.1, // Adjusted size
          ),
        ],
      ),
    );
  }
}
