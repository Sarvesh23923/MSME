// // ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_print, unused_element, sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:msme/ui/screens/add_report_screen.dart';
// import 'package:msme/ui/sheets/media_sheet.dart';

// class ReportScreen extends StatefulWidget {
//   const ReportScreen({super.key});

//   @override
//   State<ReportScreen> createState() => _ReportScreenState();
// }

// class _ReportScreenState extends State<ReportScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 100.0),
//           child: Text("Report"),
//         ),
//         leading: InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Icon(
//               Icons.arrow_back_ios_new_outlined,
//               size: 22,
//             )),
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 200),
//                 child: Center(
//                   child: SvgPicture.asset(
//                     'assets/images/report.svg',
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Center(
//                 child: Text(
//                   "Add your monthly scan and other\n                    Reports Here",
//                   style: GoogleFonts.poppins(
//                     fontSize: 20,
//                     color: const Color.fromARGB(255, 103, 103, 103),
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               )
//             ],
//           ),
//           Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 300, top: 200),
//                 child: FloatingActionButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => AddReportScreen()));
//                   },
//                   backgroundColor: Colors.white70,
//                   child: SvgPicture.asset("assets/images/camera.svg"),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
