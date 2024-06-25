import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../../Const/const.dart';
import '../../../Widgets/custom_buton.dart';
import '../../../Widgets/custom_text_field.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool obsecure = false;
  bool obsecure2 = false;

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
                  text: 'Change Password',
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45.w),
                          child: CustomTextFieldd(
                              validatorText: 'Please Enter Password',
                              text: 'Previous Password',
                              controller: email,
                              obsecure: false,
                              numbertyppe: false),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45.w),
                          child: CustomTextFieldd(
                              validatorText: 'Please Enter  New Password',
                              text: 'New Password',
                              controller: email,
                              obsecure: false,
                              numbertyppe: false),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        InkWell(
                          onTap: () async {
                            Get.back();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 70.w,
                            ),
                            child: const Button(
                              button_text: 'SAVE NOW',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
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
