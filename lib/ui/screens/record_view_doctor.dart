// // ignore_for_file: prefer_const_constructors, use_super_parameters, library_private_types_in_public_api

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:path_provider/path_provider.dart';
// import 'package:open_file/open_file.dart';

// class RecordViewDoctor extends StatefulWidget {
//   const RecordViewDoctor({Key? key}) : super(key: key);

//   @override
//   _RecordViewDoctorState createState() => _RecordViewDoctorState();
// }

// class _RecordViewDoctorState extends State<RecordViewDoctor> {
//   Future<void> _downloadReport() async {
//     final pdf = pw.Document();
//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               pw.Text("Name: Sofia", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Age: 21", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Are You Pregnant: Yes",
//                   style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("First Pregnancy: No", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Height: 5.5 ft", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Weight: 55 kg", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Blood Pressure: 120/80 mmHg",
//                   style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Sugar Level: Normal", style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Last Checkup Date: 12/05/2024",
//                   style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Name Of Spouse: Peter",
//                   style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Mobile No: 9876543210",
//                   style: pw.TextStyle(fontSize: 18)),
//               pw.SizedBox(height: 10),
//               pw.Text("Address: Tiruchengodu, Tamil Nadu",
//                   style: pw.TextStyle(fontSize: 18)),
//             ],
//           );
//         },
//       ),
//     );

//     final directory = await getExternalStorageDirectory();
//     final path = '${directory?.path}/report.pdf';
//     final file = File(path);
//     await file.writeAsBytes(await pdf.save());

//     OpenFile.open(path);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(left: 75.0),
//           child: Text("Record View"),
//         ),
//         leading: InkWell(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: const Icon(
//             Icons.arrow_back_ios_new_outlined,
//             size: 22,
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           const SizedBox(height: 10),
//           Column(
//             children: [
//               SvgPicture.asset('assets/images/profile_image.svg'),
//               const SizedBox(height: 10),
//             ],
//           ),
//           const SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Name",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("Sofia",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Age",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("21",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Are You Pregnant",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("Yes",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "First Pregnancy",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("No",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Height",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("5.5 ft",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Weight",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("55 kg",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Blood Pressure",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("120/80 mmHg",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Sugar Level",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("Normal",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Last Checkup Date",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("12/05/2024",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Name Of Spouse",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("Peter",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Mobile No",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("9876543210",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Address",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: 5),
//                 const Text("Tiruchengodu, Tamil Nadu",
//                     style: TextStyle(color: Colors.black, fontSize: 16)),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: ElevatedButton(
//               onPressed: _downloadReport,
//               child: const Text("Download Report"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
