import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/custom_buton.dart';

class JobInfo extends StatefulWidget {
  const JobInfo({super.key});

  @override
  State<JobInfo> createState() => _JobInfoState();
}

class _JobInfoState extends State<JobInfo> {
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
                  text: 'Job Info',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: jobdetail(),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Job Description",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
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
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Date Of Join",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: textColor,
                                  ),
                                ),
                                Text(
                                  "Dec, 2023",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 130.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Area",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: textColor,
                                  ),
                                ),
                                Text(
                                  "London",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
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
                        height: 40.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Job Info",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: jobinfoRow('Role', 'Managing Director'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: jobinfoRow('Location', 'Paris'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: jobinfoRow('Type', 'Permenant'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: jobinfoRow('Pay', '\$50,000'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: jobinfoRow('Qualification', 'MBA in Marketing'),
                      ),
                      SizedBox(
                        height: 40.h,
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
                        height: 40.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Contact Info",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "muhammedsaheed0217@gmail.com",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Phone",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "+123456900",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 90.w),
                          child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: const Button(button_text: 'APPLY NOW')),
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
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

Widget jobdetail() {
  return Container(
    height: 345.h,
    width: double.infinity,
    decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(32.sp),
        image: const DecorationImage(
            image: AssetImage('assets/images/seek.png'), fit: BoxFit.cover)),
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
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
                  ),
                ],
              )),
        ),
      )
    ]),
  );
}

Widget jobinfoRow(String info, value) {
  return Row(
    children: [
      Container(
        height: 30.h,
        width: 97.w,
        // color: Colors.blue,
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
