import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/View/payment_method/payment_methods.dart';
import 'package:x_app/View/profile/profile.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/bottom_nav_bar.dart';

class SearchDetail extends StatefulWidget {
  const SearchDetail({super.key});

  @override
  State<SearchDetail> createState() => _SearchDetailState();
}

class _SearchDetailState extends State<SearchDetail> {
  TextEditingController controller = TextEditingController();

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
                    Center(
                        child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child:
                          Icon(Icons.arrow_back_ios, color: black, size: 18.sp),
                    )),
                    SizedBox(
                      height: 50.h,
                      width: 270.w,
                      child: TextFormField(
                        // onTap: () {
                        //   Get.toNamed(AppRoutes.jobs);
                        // },
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
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        searchDetail(
                            image: 'assets/images/fayaz.png',
                            name: "Zahid, 20",
                            location: "Berlin"),
                        searchDetail(
                            image: 'assets/images/halima.png',
                            name: "Halima, 19",
                            location: "Berlin"),
                        searchDetail(
                            image: 'assets/images/vanesa.png',
                            name: "Vanessa, 18",
                            location: "Munich"),
                      ],
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
                        searchDetail(
                            image: 'assets/images/kate.png',
                            name: "Kate, 21",
                            location: "KOLN"),
                        searchDetail(
                            image: 'assets/images/halima.png',
                            name: "Halima, 19",
                            location: "Berlin"),
                        searchDetail(
                            image: 'assets/images/kate.png',
                            name: "Kate, 21",
                            location: "KOLN"),
                      ],
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
                        searchDetail(
                            image: 'assets/images/vanesa.png',
                            name: "Vanessa, 18",
                            location: "Munich"),
                        searchDetail(
                            image: 'assets/images/james.png',
                            name: "Halima, 19",
                            location: "Berlin"),
                        searchDetail(
                            image: 'assets/images/halima.png',
                            name: "Halima, 19",
                            location: "Berlin"),
                      ],
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

Widget searchDetail(
    {required String image, required String name, required String location}) {
  return InkWell(
    onTap: () {
      Get.to(Profile(
        image: image,
      ));
    },
    child:
    
     Container(
      height: 168.h,
      width: 110.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 5.h, left: 5.w),
          child: Container(
            height: 20.h,
            width: 41.w,
            decoration: BoxDecoration(
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
              ),
              border: Border.all(
                  color: const Color.fromARGB(255, 215, 76, 122), width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "NEW",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
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
            style: TextStyle(
                fontSize: 18.sp, color: Colors.white.withOpacity(0.5)),
          ),
        ),
      ]),
    ),
  );
}
