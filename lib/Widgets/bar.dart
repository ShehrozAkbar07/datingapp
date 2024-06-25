// import 'package:casino_app/Website/statistics_alert/statistics_alert.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../Const/color.dart';
// import '../Website/wallet_alert/wallet_alert.dart';
// import 'alert.dart';

// class Bar extends StatefulWidget {
//   const Bar({super.key});

//   @override
//   State<Bar> createState() => _BarState();
// }

// class _BarState extends State<Bar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70.h,
//       width: double.infinity,
//       color: secondary,
//       child: Column(
//         children: [
//           SizedBox(
//             height: 5.h,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.w),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         showDialog(
//                             context: context,
//                             builder: (context) {
//                               return const StatisticsAlert();
//                             });
//                       },
//                       child: Container(
//                         height: 25.h,
//                         width: 30.w,
//                         child: Image.asset(
//                           'assets/images/grid.png',
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 40.h,
//                       width: 18.w,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: buttoncolor),
//                       child: Center(
//                         child: Text(
//                           "Sports",
//                           style: TextStyle(
//                               fontSize: 3.6.sp,
//                               color: whiteColor,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       height: 55.h,
//                       width: 40.w,
//                       child: Image.asset(
//                         'assets/images/logo.png',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     Container(
//                         height: 45.h,
//                         width: 60.w,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: primary),
//                         child: Row(
//                           children: [
//                             Container(
//                               height: 45.h,
//                               width: 45.w,
//                               decoration: const BoxDecoration(
//                                   color: primary,
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(6),
//                                       bottomLeft: Radius.circular(6))),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: 8.w,
//                                   ),
//                                   Text(
//                                     "0.0001 BC",
//                                     style: TextStyle(
//                                         fontSize: 3.4.sp,
//                                         color: whiteColor,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Image.asset(
//                                     'assets/images/bitcoin.png',
//                                     height: 25.h,
//                                     width: 20.w,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 showDialog(
//                                     context: context,
//                                     builder: (builder) {
//                                       return const WalletAlert();
//                                     });
//                               },
//                               child: Container(
//                                 height: 45.h,
//                                 width: 15.w,
//                                 decoration: const BoxDecoration(
//                                     color: buttoncolor,
//                                     borderRadius: BorderRadius.only(
//                                         bottomRight: Radius.circular(6),
//                                         topRight: Radius.circular(6),
//                                         topLeft: Radius.circular(8),
//                                         bottomLeft: Radius.circular(8))),
//                                 child: Center(
//                                   child: Text(
//                                     "Wallet",
//                                     style: TextStyle(
//                                         fontSize: 3.4.sp,
//                                         color: whiteColor,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         )),
//                   ],
//                 ),
//                 Container(
//                   height: 25.h,
//                   width: 60.w,
//                   // color: yellow,
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.search,
//                         color: whiteColor,
//                         size: 17,
//                       ),
//                       SizedBox(
//                         width: 1.w,
//                       ),
//                       Text(
//                         "Search",
//                         style: TextStyle(
//                           fontSize: 3.6.sp,
//                           color: whiteColor,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 8.w,
//                       ),
//                       const Icon(Icons.person_outline,
//                           color: whiteColor, size: 19),
//                       InkWell(
//                         onTap: () {
//                           showDialog(
//                               context: context,
//                               builder: (builder) {
//                                 return SendMessageAlert();
//                               });
//                         },
//                         child: Container(
//                           height: 20.h,
//                           width: 20.w,
//                           child: Image.asset(
//                             'assets/images/app.png',
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
