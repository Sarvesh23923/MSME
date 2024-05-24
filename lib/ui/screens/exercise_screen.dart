// ignore_for_file: unnecessary_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  int activeIndex = 0;

  final List<List<Map<String, String>>> trimesterContents = [
    [
      {"text": "Lean Meat","description": "A good source of iron and protein, lean meats like turkey and chicken offer all of the amino acids that act as the building blocks for cells.", "image": "assets/images/google_image.svg"},
      {"text": "Yogurt","description": "The calcium and protein in each cup supports bone structure. Opt for a variety with a short ingredient list and few added sugars.", "image": "assets/images/google_image.svg"},
      {"text": "Spinach","description": "This dark leafy green offers a combo platter of nutrients, including fiber, calcium, folate, iron, vitamin A, vitamin C, vitamin E and vitamin K.", "image": "assets/images/google_image.svg"},
      {"text": "Spinach","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Spinach","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
    ],
    [
      {"text": "Shashankasana","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
      {"text": "Shashankasana","description": "A forward bend yoga pose that can help with stress relief, relaxation, and improved lung and intestinal health ", "image": "assets/images/google_image.svg"},
    ],
    [
      {"text": "3rd Trimester","description": "Content 1", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester","description": "Content 2", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester","description": "Content 3", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester","description": "Content 4", "image": "assets/images/google_image.svg"},
      {"text": "3rd Trimester","description": "Content 5", "image": "assets/images/google_image.svg"},
    ],
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Exercise",
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: screenWidth * 0.06,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    trimesterButton("1st Trimester", 0, screenWidth, screenHeight),
                    trimesterButton("2nd Trimester", 1, screenWidth, screenHeight),
                    trimesterButton("3rd Trimester", 2, screenWidth, screenHeight),
                  ],
                ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: AnimatedSwitcher(
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
                    child: getTrimesterContent(activeIndex),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget trimesterButton(String text, int index, double screenWidth, double screenHeight) {
    return InkWell(
      child: Container(
        width: screenWidth * 0.3,
        height: screenHeight * 0.05,
        decoration: BoxDecoration(
          color: activeIndex == index ? Color.fromRGBO(129,26,116,1): Color.fromRGBO(216, 216, 216, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.032,
              color: activeIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          activeIndex = index;
        });
      },
    );
  }

  Widget getTrimesterContent(int index) {
    return Column(
      key: ValueKey<int>(index),
      children: trimesterContents[index].map((content) {
        return buildContainer(content["text"]!, content["description"]!, content["image"]!);
      }).toList(),
    );
  }

  Widget buildContainer(String text, String description, String imagePath) {
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
            blurRadius: 3
          )
        ]
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
                  fontWeight: FontWeight.w600
                ),
              ),

              Container(
                width: 209,
                child: Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    color: Colors.grey[800]
                  )
                ),
              )
            ]
          ),
          SizedBox(width: 16),
          SizedBox(
            width: 80,
            child: SvgPicture.asset(
              imagePath,
              width: 100,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
