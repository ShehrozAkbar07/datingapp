import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Const/const.dart';
import 'package:x_app/Widgets/background_image.dart';

class Seekers extends StatefulWidget {
  const Seekers({super.key});

  @override
  State<Seekers> createState() => _SeekersState();
}

class _SeekersState extends State<Seekers> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  "Recent Posting",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentPosting('assets/images/recent.png'),
                        SizedBox(
                          width: 15.w,
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jobs",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.jobinfo);
                        },
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 30.h,
              ),
              recenJob(),
              SizedBox(
                height: 30.h,
              ),
              recenJob(),
              SizedBox(
                height: 30.h,
              ),
            ]),
          ),
        ))
      ],
    );
  }
}

Widget recentPosting(String image) {
  return Container(
    height: 90.h,
    width: 85.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
    child: Column(children: [
      SizedBox(
        height: 37.h,
      ),
      Container(
        height: 25.h,
        width: 25.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/apple.png'),
        )),
      ),
      SizedBox(
        height: 6.h,
      ),
      Text(
        "CEO",
        style: TextStyle(
            fontSize: 13.sp, color: whiteColor, fontWeight: FontWeight.bold),
      ),
    ]),
  );
}

Widget recenJob() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.jobinfo);
      },
      child: Container(
        height: 310.h,
        width: double.infinity,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(32.sp),
            image: const DecorationImage(
                image: AssetImage('assets/images/seek.png'),
                fit: BoxFit.contain)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 30.w),
            child: Container(
              height: 20.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: const Color(0xfff1f0ee),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 147, 147, 147)
                        .withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(
                        0, 3), // changes the position of the shadow
                  ),
                ],
              ),
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: textColor,
                        size: 14.sp,
                      ),
                      Text(
                        'London',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.sp),
                      ),
                    ],
                  )),
            ),
          )
        ]),
      ),
    ),
  );
}
