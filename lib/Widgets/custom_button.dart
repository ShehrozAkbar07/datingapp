// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//   double? width;
//   Color? color;
//   CustomButton(
//       {Key? key,
//       required this.text,
//       required this.onPressed,
//       this.color,
//       this.width})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 55.h,
//       width: width ?? null,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ButtonStyle(
//               elevation: MaterialStateProperty.all(0),
//               backgroundColor:
//                   MaterialStateProperty.all(color ?? Color(0xffb59f84)),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25)))),
//           child: FittedBox(
//             fit: BoxFit.scaleDown,
//             child: Text(
//               text,
//               style: const TextStyle(color: Colors.white, fontSize: 17),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
