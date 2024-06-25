import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../Const/const.dart';

class Liked extends StatefulWidget {
  const Liked({super.key});

  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
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
                  text: 'Liked',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LikedImage('assets/images/fayaz.png', 'HANOVER',
                                  'Zahid, 20'),
                              LikedImage('assets/images/halima.png', 'BERLIN',
                                  'HALIMA, 18'),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LikedImage('assets/images/kate.png', 'HANOVER',
                                  'KATE, 26'),
                              LikedImage('assets/images/james.png', 'HAMBURG',
                                  'JAMES, 24'),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LikedImage('assets/images/fayaz.png', 'HANOVER',
                                  'Zahid, 20'),
                              LikedImage('assets/images/halima.png', 'BERLIN',
                                  'HALIMA, 18'),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      )),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}

Widget LikedImage(String image, String location, String name) {
  return Container(
    height: 200.h,
    width: 150.w,
    decoration: BoxDecoration(
      border: Border.all(width: 4, color: textColor),
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Center(
        child: Container(
          height: 15.h,
          width: 90,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: textColor),
          child: Center(
            child: Text(
              "100% Match",
              style: TextStyle(
                fontSize: 10.sp,
                color: whiteColor,
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 80.h,
      ),
      Center(
        child: Container(
          height: 25.h,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff99919e), width: 1),
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xff807685).withOpacity(0.7)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Text(
              "6y, Designer",
              style: TextStyle(
                fontSize: 12.sp,
                color: whiteColor,
              ),
            ),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 3.h),
          child: Text(
            name,
            style: TextStyle(
                fontSize: 18.sp,
                color: whiteColor,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      Center(
        child: Text(
          location,
          style:
              TextStyle(fontSize: 18.sp, color: Colors.white.withOpacity(0.5)),
        ),
      ),
    ]),
  );
}
