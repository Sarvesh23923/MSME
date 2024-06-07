// // ignore_for_file: prefer_const_constructors, avoid_print

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:msme/ui/screens/dashboard_screen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path;

// class MediaSheet extends StatefulWidget {
//   const MediaSheet({super.key});

//   @override
//   State<MediaSheet> createState() => _MediaSheetState();
// }

// class _MediaSheetState extends State<MediaSheet> {
//   bool isChecked = false;
//   File? _selectedImage;
//   final TextEditingController _imagePathController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double screenWidth = size.width;
//     double screenHeight = size.height / 2.5;
//     return Container(
//       height: screenHeight,
//       width: screenWidth,
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.only(
//             topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//         color: Theme.of(context).colorScheme.background,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Choose the media',
//               style: GoogleFonts.inter(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: screenHeight * 0.19,
//             ),
//             Center(
//               child: GestureDetector(
//                 onTap: () {
//                   _takePhoto();
//                 },
//                 child: Container(
//                   width: screenWidth * 0.8,
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 248, 245, 245),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 1),
//                         child: SvgPicture.asset(
//                           'assets/images/sheet_camera.svg',
//                           height: screenHeight * 0.1,
//                           width: screenWidth * 0.1,
//                         ),
//                       ),
//                       SizedBox(
//                         width: screenWidth * 0.099,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Text(
//                           "Take a Photo ",
//                           style: GoogleFonts.inter(
//                               fontSize: screenWidth * 0.045,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * 0.19,
//             ),
//             Center(
//               child: GestureDetector(
//                 onTap: () {
//                   _selectImage();
//                 },
//                 child: Container(
//                   width: screenWidth * 0.8,
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 248, 245, 245),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset: const Offset(0, 3),
//                         ),
//                       ],
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 1),
//                         child: SvgPicture.asset(
//                           'assets/images/gallery.svg',
//                           height: screenHeight * 0.1,
//                           width: screenWidth * 0.1,
//                         ),
//                       ),
//                       SizedBox(
//                         width: screenWidth * 0.099,
//                       ),
//                       Center(
//                         child: Text(
//                           "Upload From Gallery",
//                           style: GoogleFonts.inter(
//                               fontSize: screenWidth * 0.045,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             // TextField(
//             //   controller: _imagePathController,
//             //   decoration: InputDecoration(
//             //     border: OutlineInputBorder(),
//             //     labelText: 'Add Path of Report',
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _takePhoto() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.camera);
//     if (pickedFile != null) {
//       final directory = await getApplicationDocumentsDirectory();
//       final imagePath = directory.path + '/selected_image.jpg';
//       final file = File(imagePath);
//       try {
//         await file.writeAsBytes(await pickedFile.readAsBytes());
//         setState(() {
//           _selectedImage = file;
//           _imagePathController.text = imagePath;
//         });
//         print('Picked media file: $imagePath');
//       } on PlatformException catch (e) {
//         if (mounted) {
//           if (e.code == 'photo_access_denied' ||
//               e.code == 'photo_access_restricted') {
//             String message = 'permission_denied_photos';
//             ErrorDialog.show(context, message, () {
//               _requestPermission();
//             });
//           } else if (e.code == 'camera_access_denied' ||
//               e.code == 'camera_access_restricted') {
//             String message = 'permission_denied_camera';
//             ErrorDialog.show(context, message, () {
//               _requestPermission();
//             });
//           } else {
//             ErrorDialog.show(context, e.toString(), () {
//               _requestPermission();
//             });
//           }
//         }
//       }
//     }
//   }

//   Future<void> _selectImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       final directory = await getApplicationDocumentsDirectory();
//       final imagePath = directory.path + '/selected_image.jpg';
//       final file = File(imagePath);
//       await file.writeAsBytes(await pickedFile.readAsBytes());
//       setState(() {
//         _selectedImage = file;
//       });
//     }
//   }

//   void _requestPermission() {}
// }

// class ErrorDialog {
//   static void show(
//       BuildContext context, String message, VoidCallback onDismiss) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Error'),
//           content: Text(message),
//           actions: [
//             TextButton(
//               onPressed: onDismiss,
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
