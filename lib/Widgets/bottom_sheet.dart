// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../Const/color.dart';
// import '../Const/const.dart';
// import 'custom_buton.dart';

// Future bottomsheet(
//   context,
//   size,
//   String immage,
//   String title,
//   String greetings,
//   String r1t1,
//   String r1t2,
//   String r2t1,
//   String r2t2,
//   String r3t1,
//   String r3t2,
//   String totalpayment_amount,
//   Color buttoncolor,
//   String card_checkimage,
// ) {
//   return showModalBottomSheet(
//       context: context,
//       constraints: const BoxConstraints(maxHeight: 650, minHeight: 600),
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
//       ),
//       builder: (context) {
//         return Container(
//           decoration: BoxDecoration(
//               color: whiteColor, borderRadius: BorderRadius.circular(20)),
//           margin: const EdgeInsets.only(top: 100),
//           height: size.height * 2,
//           child: StatefulBuilder(
//             builder: (BuildContext context, StateSetter setState) {
//               return Padding(
//                 padding: EdgeInsets.symmetric(horizontal: padding),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   // mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // const Icon(
//                     //   Icons.close,
//                     //   size: 30,
//                     //   color: Colors.white,

//                     // ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: size.height * 0.09,
//                         width: size.width * 0.7,
//                         decoration: BoxDecoration(
//                             // color: Colors.black,
//                             shape: BoxShape.circle,
//                             image: DecorationImage(
//                                 image: AssetImage(immage),
//                                 fit: BoxFit.contain)),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 15),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text(
//                           title,
//                           style: const TextStyle(
//                               height: 1.5,
//                               color: black,
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                     ),

//                     // SizedBox(
//                     //   height: size.height * 0.1,
//                     // ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         greetings,
//                         style: const TextStyle(
//                           height: 2,
//                           color: grey,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                     BottomsheetRow(r1t1, r1t2),
//                     BottomsheetRow(r2t1, r2t2),
//                     BottomsheetRow(r3t1, r3t2),
//                     const Divider(
//                       color: grey,
//                     ),
//                     BottomsheetRow('Total Payment', totalpayment_amount),
//                     SizedBox(
//                       height: 10.h,
//                     ),
//                     Container(
//                       height: 60.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10), color: bg),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15.w),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               height: 60.h,
//                               width: 200.w,
//                               // color: grey,
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     height: 40,
//                                     width: 40,
//                                     decoration: BoxDecoration(
//                                         color: whiteColor,
//                                         borderRadius:
//                                             BorderRadius.circular(14)),
//                                     child: Center(
//                                       child: Container(
//                                         height: 20.h,
//                                         width: 20.w,
//                                         child: Image.asset(
//                                             'assets/images/mastercard_logo.png'),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 15.w,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 10.h),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text('UBA Master Card',
//                                             style: TextStyle(
//                                                 fontSize: 14.sp,
//                                                 color: black,
//                                                 fontWeight: FontWeight.bold)),
//                                         Text(
//                                           '5282 **** **** 7824 | 06/27',
//                                           style: TextStyle(
//                                               fontSize: 12.sp,
//                                               height: 1.4,
//                                               color: grey),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               height: size.height * 0.04,
//                               width: size.width * 0.05,
//                               decoration: BoxDecoration(
//                                   // color: Colors.black,
//                                   shape: BoxShape.circle,
//                                   image: DecorationImage(
//                                       image: AssetImage(card_checkimage),
//                                       fit: BoxFit.contain)),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),

//                     Button(button_text: 'Done', colors: buttoncolor)
//                   ],
//                 ),
//               );
//             },
//           ),
//         );
//       });
// }

// Widget BottomsheetRow(text1, text2) {
//   return Padding(
//     padding: EdgeInsets.symmetric(vertical: 10.h),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           text1,
//           style: TextStyle(
//               height: 2,
//               color: grey,
//               fontSize: 16.sp,
//               fontWeight: FontWeight.bold),
//         ),
//         Text(
//           text2,
//           style: TextStyle(
//               height: 2,
//               color: black,
//               fontSize: 16.sp,
//               fontWeight: FontWeight.bold),
//         ),
//       ],
//     ),
//   );
// }
