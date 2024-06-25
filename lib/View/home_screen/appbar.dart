// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import '../../AppRoutes/routes.dart';
// import '../../Const/color.dart';

// class HomeScreenAppbar extends StatefulWidget {
//   const HomeScreenAppbar({super.key});

//   @override
//   State<HomeScreenAppbar> createState() => _HomeScreenAppbarState();
// }

// class _HomeScreenAppbarState extends State<HomeScreenAppbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150.h,
//       width: double.infinity,
//       color: secondary,
//       child: Column(
//         children: [
//           SizedBox(
//             height: 10.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   height: 50.h,
//                   width: 100.w,
//                   child: Image.asset(
//                     'assets/images/logo.png',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 Container(
//                   height: 40.h,
//                   width: 120,
//                   // color: Colors.yellow,
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: 25.h,
//                           width: 80.w,
//                           decoration: BoxDecoration(
//                               color: Color(0xff687985),
//                               borderRadius: BorderRadius.circular(5)),
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 10.w),
//                             child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Container(
//                                     height: 17.h,
//                                     width: 17.w,
//                                     decoration: const BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         color: Color(0xffffc000)),
//                                     child: const Center(
//                                       child: Icon(
//                                         Icons.add,
//                                         color: primary,
//                                         size: 14,
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                     "700000",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 10.sp,
//                                       color: whiteColor,
//                                     ),
//                                   ),
//                                 ]),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             Get.toNamed(AppRoutes.notifications);
//                           },
//                           child: const Icon(
//                             Icons.notifications_none_outlined,
//                             color: buttoncolor,
//                           ),
//                         )
//                       ]),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: TextFormField(
//               style: const TextStyle(color: Colors.white),
//               textAlign: TextAlign.left,
//               decoration: InputDecoration(
//                 labelStyle: const TextStyle(color: Colors.white, fontSize: 14),
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
//                 fillColor: const Color(0xff475d6b),
//                 filled: true,
//                 prefixIcon: const Icon(
//                   Icons.search,
//                   color: whiteColor,
//                 ),
//                 prefix: Padding(
//                   padding: EdgeInsets.only(right: 5.w),
//                 ),
//                 hintText: "Search live events",
//                 hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
//                 border: OutlineInputBorder(
//                   borderSide:
//                       const BorderSide(color: Color(0xff475d6b), width: 1.0),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide:
//                       const BorderSide(color: Color(0xff475d6b), width: 1.0),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide:
//                       const BorderSide(color: Color(0xff475d6b), width: 1.0),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.red, width: 2.0),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
