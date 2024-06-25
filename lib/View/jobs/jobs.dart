import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';

class Jobs extends StatefulWidget {
  const Jobs({super.key});

  @override
  State<Jobs> createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
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
                  iconsort: false,
                  text: 'Jobs',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: jobdetail('assets/images/seek.png'),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: jobdetail('assets/images/job_add.png'),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: jobdetail('assets/images/seek.png'),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                    ],
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

Widget imageContainer(String image) {
  return Container(
    height: 80.h,
    width: 100.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
  );
}

Widget paymentmethods(String image, String title) {
  return Row(
    children: [
      Image.asset(
        image,
        height: 35.h,
        width: 30.w,
      ),
      SizedBox(
        width: 30.w,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          color: textColor,
        ),
      ),
    ],
  );
}

Widget jobdetail(String image) {
  return InkWell(
    onTap: () {
      Get.toNamed(AppRoutes.jobinfo);
    },
    child: Container(
      height: 345.h,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(32.sp),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
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
                  color:
                      const Color.fromARGB(255, 147, 147, 147).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:
                      const Offset(0, 3), // changes the position of the shadow
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
  );
}

Widget jobsRow(String info, value) {
  return Row(
    children: [
      SizedBox(
        height: 30.h,
        width: 97.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info,
              style: TextStyle(
                fontSize: 16.sp,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 24.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      )
    ],
  );
}
