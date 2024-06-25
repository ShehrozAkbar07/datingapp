import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Const/const.dart';
import 'package:x_app/View/home_screen/seekers/seekers.dart';
import 'package:x_app/View/profile/profile.dart';
import 'package:x_app/Widgets/background_image.dart';

class Recruiter extends StatefulWidget {
  const Recruiter({super.key});

  @override
  State<Recruiter> createState() => _RecruiterState();
}

class _RecruiterState extends State<Recruiter> {
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
                        recentMatches(
                            'assets/images/fayaz.png', 'Fayaz, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentMatches(
                            'assets/images/berlin.png', 'Farin, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentMatches(
                            'assets/images/fayaz.png', 'Fayaz, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentMatches(
                            'assets/images/berlin.png', 'Farin, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentMatches(
                            'assets/images/fayaz.png', 'Fayaz, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                        recentMatches(
                            'assets/images/berlin.png', 'Farin, 19', 'BERLIN'),
                        SizedBox(
                          width: 15.w,
                        ),
                      ]),
                ),
              ),
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

Widget recentMatches(String image, name, location) {
  return InkWell(
    onTap: () {
      Get.to(Profile(
        image: image,
      ));
    },
    child: Container(
      height: 100.h,
      width: 85.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(children: [
        SizedBox(
          height: 50.h,
        ),
        Text(
          name,
          style: TextStyle(
              fontSize: 13.sp, color: whiteColor, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          location,
          style: TextStyle(
              fontSize: 13.sp,
              color: const Color.fromARGB(255, 234, 234, 234),
              fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  );
}
