import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/custom_buton.dart';

class RecruitereditProfile extends StatefulWidget {
  const RecruitereditProfile({super.key});

  @override
  State<RecruitereditProfile> createState() => _RecruitereditProfileState();
}

class _RecruitereditProfileState extends State<RecruitereditProfile> {
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
              Center(
                child: Container(
                  height: 80.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(12.sp),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/applesq.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Apple",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.edit_square,
                      color: textColor,
                      size: 21.sp,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Sollicitudin ac facilisi senectus cras aliquet vitae eget arcu. In nulla et eu enim ac. Ac velit neque neque aenean ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: textColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Employees",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "100000",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Head Quarter",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "London",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: SizedBox(
                  height: 1.h,
                  width: double.infinity,
                  child: const Divider(
                    color: grey,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Contact Info",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    Icon(
                      Icons.edit_square,
                      color: textColor,
                      size: 21.sp,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: columntext(
                  heading2: "Phone",
                  text2: "+1265482900",
                  heading1: "Email",
                  text1: "muhammedsaheed0217@gmail.com",
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Button(button_text: 'SAVE NOW')),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
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

Widget columntext(
    {required heading1, required text1, required heading2, required text2}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        heading1,
        style: TextStyle(
          fontSize: 15.sp,
          color: textColor,
        ),
      ),
      Text(
        text1,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
      SizedBox(
        height: 15.h,
      ),
      Text(
        heading2,
        style: TextStyle(
          fontSize: 15.sp,
          color: textColor,
        ),
      ),
      Text(
        text2,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    ],
  );
}
