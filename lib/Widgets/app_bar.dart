import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Const/color.dart';
import '../Const/const.dart';

class Appbarr extends StatelessWidget {
  bool? iconsort;
  final String text;
  Appbarr({required this.text, this.iconsort});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: double.infinity,
          // color: secondary,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child:
                          Icon(Icons.arrow_back_ios, color: black, size: 18.sp),
                    )),
                  ),
                ),
                // SizedBox(
                //   width: 70.w,
                // ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                iconsort!
                    ? InkWell(
                        onTap: () {
                          // Get.toNamed(AppRoutes.notifications);
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Center(
                              child: Icon(Icons.tune_outlined,
                                  color: black, size: 18.sp)),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
