// // ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks, unnecessary_import

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:msme/ui/sheets/media_sheet.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path;

// class AddReportScreen extends StatefulWidget {
//   const AddReportScreen({super.key});

//   @override
//   State<AddReportScreen> createState() => _AddReportScreenState();
// }

// class _AddReportScreenState extends State<AddReportScreen> {
//   File? _selectedImage;
//   final TextEditingController _imagePathController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 80.0),
//           child: Text("Add Report"),
//         ),
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back_ios_new_outlined,
//             size: 22,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: const Text(
//                 "Name",
//                 style: TextStyle(color: Colors.black, fontSize: 18),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   hintText: 'Report Name',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: const Text(
//                 "Add Description",
//                 style: TextStyle(color: Colors.black, fontSize: 18),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   hintText: 'Add Description of Report',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: const Text(
//                 "Path of Report",
//                 style: TextStyle(color: Colors.black, fontSize: 18),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
//               child: TextFormField(
//                 controller: _imagePathController,
//                 initialValue: _selectedImage != 0 ? _selectedImage?.path : '',
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   hintText: 'Add path Of Report',
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 250, bottom: 30),
//               child: ElevatedButton(
//                 onPressed: () {
//                   _launchMediaSheet(context);
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all<Color>(
//                     const Color(0xFF811A74),
//                   ),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                   ),
//                 ),
//                 child: Text(
//                   'Select Image',
//                   style: GoogleFonts.inter(
//                       fontSize: 13,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * 0.1,
//             ),
//             Center(
//                 child: ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                         const Color(0xFF811A74),
//                       ),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15.0),
//                         ),
//                       ),
//                     ),
//                     child: Text(
//                       'Save Report',
//                       style:
//                           GoogleFonts.inter(fontSize: 20, color: Colors.white),
//                     ))),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void _launchMediaSheet(BuildContext context) async {
//   Future<String?> future = showModalBottomSheet<String>(
//       context: context,
//       isScrollControlled: false,
//       backgroundColor: Colors.transparent,
//       builder: (context) {
//         return const MediaSheet();
//       });
// }
