// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:x_app/AppRoutes/routes.dart';
// import 'package:x_app/Const/color.dart';
// import 'package:x_app/Const/const.dart';
// import 'package:x_app/Widgets/app_bar.dart';
// import 'package:x_app/Widgets/background_image.dart';
// import 'package:x_app/Widgets/custom_buton.dart';
// import 'package:x_app/Widgets/custom_text_field.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController country = TextEditingController();
//   TextEditingController pass = TextEditingController();
//   TextEditingController retypepass = TextEditingController();
//   bool obsecure = false;
//   bool obsecure2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         const BackGroundImage(),
//         Scaffold(
//           bottomNavigationBar: Container(
//               color: Colors.transparent,
//               height: 45.h,
//               width: double.infinity,
//               child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 50.w),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "Already have an account?",
//                             style: TextStyle(
//                               fontSize: 15.sp,
//                               color: textColor,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20.w,
//                           ),
//                           InkWell(
//                             onTap: () {
//                               Get.toNamed(AppRoutes.login);
//                             },
//                             child: GradientText(
//                               'LOGIN NOW',
//                               style: TextStyle(fontSize: 18.sp),
//                               colors: [
//                                 Colors.blue.shade400,
//                                 Colors.blue.shade900,
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10.h,
//                       )
//                     ],
//                   ))),
//           backgroundColor: Colors.transparent,
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Appbarr(
//               //   iconCross: false,
//               //   text: 'Sign in',
//               // ),
//               Flexible(
//                   child: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: padding),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: 60.h,
//                       ),
//                       Center(
//                         child: Text(
//                           "Signup",
//                           style: TextStyle(
//                               fontSize: 26.sp,
//                               color: textColor,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 90.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Your Name',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Your Email',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Your Phone',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Your Country',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Password',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 45.w),
//                         child: CustomTextFieldd(
//                             text: 'Retype Password',
//                             controller: email,
//                             obsecure: false,
//                             numbertyppe: false),
//                       ),
//                       SizedBox(
//                         height: 35.h,
//                       ),
//                       InkWell(
//                         onTap: () async {
//                           Get.toNamed(AppRoutes.login);

//                           // Get.toNamed(AppRoutes.home);

//                           // Get.toNamed(AppRoutes.bottom_navi);
//                           // var sp = await SharedPreferences.getInstance();
//                           // sp.setBool(SplashScreenState.KEYSignup, true);
//                         },
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 70.w,
//                           ),
//                           child: const Button(
//                             button_text: 'SIGNUP NOW',
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 35.h,
//                       ),
//                       Center(
//                         child: Text(
//                           "Or",
//                           style: TextStyle(
//                             fontSize: 20.sp,
//                             color: textColor,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Center(
//                         child: Container(
//                           height: 45.h,
//                           width: 120.w,
//                           color: Colors.transparent,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 height: 50.h,
//                                 width: 50.w,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: const Color(0xff915dbf),
//                                         width: 1)),
//                                 child: Center(
//                                   child: GradientText(
//                                     'G',
//                                     style: TextStyle(
//                                         fontSize: 18.sp,
//                                         fontWeight: FontWeight.bold),
//                                     colors: [
//                                       const Color(0xffb138ab),
//                                       Colors.blue.shade400,
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: 50.h,
//                                 width: 60.w,
//                                 decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                         color: const Color(0xff915dbf),
//                                         width: 1)),
//                                 child: Center(
//                                   child: GradientText(
//                                     'F',
//                                     style: TextStyle(
//                                         fontSize: 18.sp,
//                                         fontWeight: FontWeight.bold),
//                                     colors: [
//                                       const Color(0xffb138ab),
//                                       Colors.blue.shade400,
//                                     ],
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ))
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
