import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/View/search/search_detail.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/custom_buton.dart';
import 'package:x_app/Widgets/drop_down.dart';

class EditJob extends StatefulWidget {
  const EditJob({super.key});

  @override
  State<EditJob> createState() => _EditJobState();
}

class _EditJobState extends State<EditJob> {
  List<Map<String, String>> myJson = [
    {'Duration': 'Director Of Fiannce'},
    {'Duration': 'CFO'},
    {'Duration': 'CEO'},
  ];
  List<Map<String, String>> type = [
    {'Duration': 'Permenant'},
    {'Duration': 'Contract'},
    {'Duration': 'Full Time'},
    {'Duration': 'Part Time'},
  ];
  List<Map<String, String>> pay = [
    {'Duration': '\$10,000'},
    {'Duration': '\$50,000'},
    {'Duration': '\$100,000'},
    {'Duration': '\$150,000'},
  ];
  List<Map<String, String>> location = [
    {'Duration': 'Tokyo'},
    {'Duration': 'Beging'},
    {'Duration': 'Rio'},
    {'Duration': 'Istanbul'},
  ];
  List<Map<String, String>> qualification = [
    {'Duration': 'BS in Biomedical Engineering'},
    {'Duration': 'MS in Electrical Engineering'},
    {'Duration': 'MS in Software Engineering'},
    {'Duration': 'Master of Business administration'},
  ];
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
                  text: 'Edit Job',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: jobdetail(),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
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
                        height: 20.h,
                      ),
                      heading('Role'),
                      SizedBox(
                        height: 10.h,
                      ),
                      DropDown(
                        hinttext: 'Managing Director',
                        myJson: myJson,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      heading('Location'),
                      SizedBox(
                        height: 20.h,
                      ),
                      DropDown(
                        hinttext: 'Paris',
                        myJson: location,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      heading('Type'),
                      SizedBox(
                        height: 20.h,
                      ),
                      DropDown(
                        hinttext: 'Permenant',
                        myJson: type,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      heading('Pay'),
                      SizedBox(
                        height: 20.h,
                      ),
                      DropDown(
                        hinttext: '\$10,0000',
                        myJson: pay,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      heading('Qualification'),
                      SizedBox(
                        height: 20.h,
                      ),
                      DropDown(
                        hinttext: 'MBA in Marketing',
                        myJson: qualification,
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
                        height: 30.h,
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
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 16.sp,
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
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          "Phone",
                          style: TextStyle(
                            fontSize: 16.sp,
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
                            fontSize: 16.sp,
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

Widget EditJobRow(String info, value) {
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
