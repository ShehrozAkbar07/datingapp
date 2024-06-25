import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/background_image.dart';

class SeekersProfile extends StatefulWidget {
  final String image;
  const SeekersProfile({super.key, required this.image});

  @override
  State<SeekersProfile> createState() => _SeekersProfileState();
}

class _SeekersProfileState extends State<SeekersProfile> {
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
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Text(
                  "Bio",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: textColor,
                      fontWeight: FontWeight.bold),
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
                    columntext(
                      heading2: "Status of Safety",
                      text2: "Checked",
                      heading1: "Date of Availability",
                      text1: "Dec, 2023",
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    columntext(
                      heading2: "Regulatory Bodies",
                      text2: "Registered",
                      heading1: "Area Willing to Work",
                      text1: "London",
                    ),
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
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Personal Info",
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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    columntext(
                      heading2: "Gender",
                      text2: "Male",
                      heading1: "First Name",
                      text1: "Zahid",
                    ),
                    SizedBox(
                      width: 100.w,
                    ),
                    columntext(
                      heading2: "Age Group",
                      text2: "20-30",
                      heading1: "Surname ",
                      text1: "Alam",
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
                child: Text(
                  "Professional Info",
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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Skills",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "Brand Design",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "Web Design",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "App Design",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Experience",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "Brand Design",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "Web Design",
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "App Design",
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
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: columntext(
                  heading2: "Phone",
                  text2: "+1265482900",
                  heading1: "Email",
                  text1: "muhammedsaheed0217@gmail.com",
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
                child: Text(
                  "Portfolio",
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
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: portfolio(
                      'assets/images/todo.png', 'assets/images/sticky.png')),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: portfolio(
                      'assets/images/plan.png', 'assets/images/todo.png')),
              SizedBox(
                height: 140.h,
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

Widget portfolio(String image, String image2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 230.h,
        width: 160.w,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(32.sp),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
      Container(
        height: 230.h,
        width: 160.w,
        decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(32.sp),
            image:
                DecorationImage(image: AssetImage(image2), fit: BoxFit.cover)),
      ),
    ],
  );
}
