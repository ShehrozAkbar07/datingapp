import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';

class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool obsecure = false;
  bool obsecure2 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarr(
                  iconsort: true,
                  text: 'Packages',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Free",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "\$0",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                SizedBox(
                                  height: 6.5.h,
                                  width: 160.w,
                                  child: const Divider(
                                    color: grey,
                                    height: 1.6,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "1 Job Listing",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "No Messaging",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Limited Matches",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "No Contacts",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 27.h,
                                ),
                                Container(
                                  height: 40.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: textColor
                                      // gradient: const LinearGradient(
                                      //   begin: Alignment.bottomLeft,
                                      //   end: Alignment.bottomRight,
                                      //   colors: [
                                      //     Color(0xffb138ab),
                                      //     Color(0xff915dbf),
                                      //     Color(0xff767dd0),
                                      //     Color(0xff5c9ae0),
                                      //     Color(0xff50a8e8)
                                      //   ],
                                      // )
                                      ),
                                  child: Center(
                                    child: Text(
                                      "SUBSCRIBE",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Premium",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "\$100",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                SizedBox(
                                  height: 6.5.h,
                                  width: 160.w,
                                  child: const Divider(
                                    color: grey,
                                    height: 1.6,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Unlimited Job Listing",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Unlimited Messaging",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Unlimited Matches",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 18.h,
                                ),
                                Text(
                                  "Unlimited Contacts",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  height: 27.h,
                                ),
                                Container(
                                  height: 40.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      gradient: const LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffb138ab),
                                          Color(0xff915dbf),
                                          Color(0xff767dd0),
                                          Color(0xff5c9ae0),
                                          Color(0xff50a8e8)
                                        ],
                                      )),
                                  child: Center(
                                    child: Text(
                                      "SUBSCRIBE",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
