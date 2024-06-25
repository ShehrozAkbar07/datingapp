import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/drop_down.dart';

class Searchnow extends StatefulWidget {
  const Searchnow({super.key});

  @override
  State<Searchnow> createState() => _SearchnowState();
}

class _SearchnowState extends State<Searchnow> {
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
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40.h,
            ),
            Container(
              height: 80.h,
              width: double.infinity,
              // color: secondary,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 300.w,
                      child: TextFormField(
                        onTap: () {
                          Get.toNamed(AppRoutes.searchdetail);
                        },
                        style:
                            const TextStyle(color: Colors.grey), //<-- SEE HERE

                        decoration: InputDecoration(
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 13.sp),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 10),
                          fillColor: const Color(0xffebeced),
                          filled: true,

                          // prefixIcon: prefixIcon,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 5.w, top: 5.h),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 27.sp,
                            ),
                          ),
                          hintText: 'Designer',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16.sp),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffebeced), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffebeced), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffebeced), width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffebeced), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                          child: Icon(Icons.tune_outlined,
                              color: black, size: 18.sp)),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
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
                    height: 60.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.searchdetail);
                      },
                      child: Container(
                        height: 45.h,
                        width: 170.w,
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search_outlined,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "SEARCH NOW",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ]),
        ))
      ],
    );
  }
}

Widget heading(String heading) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Text(
      heading,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    ),
  );
}
