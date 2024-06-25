import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';

class CancelSubscription extends StatefulWidget {
  const CancelSubscription({super.key});

  @override
  State<CancelSubscription> createState() => _CancelSubscriptionState();
}

class _CancelSubscriptionState extends State<CancelSubscription> {
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
                  text: 'Cancel Subscription',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90.h,
                        ),
                        Center(
                          child: Text(
                            "Do you want to cancel subscription?",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: textColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              height: 35.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: textColor),
                              child: Center(
                                child: Text(
                                  "YES",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
