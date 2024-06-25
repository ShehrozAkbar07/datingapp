import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Const/const.dart';
import 'package:x_app/Const/toast.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/custom_buton.dart';
import 'package:x_app/Widgets/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();

  bool obsecure = false;
  bool obsecure2 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        Scaffold(
          bottomNavigationBar: Container(
              color: Colors.transparent,
              height: 45.h,
              width: double.infinity,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: textColor,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.signup);
                            },
                            child: GradientText(
                              'SIGNUP NOW',
                              style: TextStyle(fontSize: 18.sp),
                              colors: [
                                Colors.blue.shade400,
                                Colors.blue.shade900,
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ))),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Appbarr(
              //   iconCross: false,
              //   text: 'Sign in',
              // ),
              Flexible(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 90.h,
                        ),
                        Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 26.sp,
                                color: textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 90.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 45.w),
                          child: CustomTextFieldd(
                              validatorText: 'Please Enter Email',
                              text: 'Email',
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
                              validatorText: 'Please Enter Password',
                              text: 'Password',
                              controller: pass,
                              obsecure: false,
                              numbertyppe: false),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        InkWell(
                          onTap: () async {
                            if (_formkey.currentState!.validate()) {
                              _auth
                                  .signInWithEmailAndPassword(
                                email: email.text.toString(),
                                password: pass.text.toString(),
                              )
                                  .then((value) {
                                //  print('object');
                                Fluttertoast.showToast(
                                    msg: 'Sign In Successfully ');

                                Get.toNamed(AppRoutes.bottomnav);

                                // Utils().toastMessag("Sucessfully");

                                // setState(() {
                                //   showSpinner = false;
                                // });
                              }).onError((error, stackTrace) {
                                Utils().toastMessag(
                                  error.toString(),
                                );
                              });
                            }
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 70.w,
                            ),
                            child: const Button(
                              button_text: 'LOGIN NOW',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        Center(
                          child: Container(
                            height: 45.h,
                            width: 120.w,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xff915dbf),
                                          width: 1)),
                                  child: Center(
                                    child: GradientText(
                                      'G',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold),
                                      colors: [
                                        const Color(0xffb138ab),
                                        Colors.blue.shade400,
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xff915dbf),
                                          width: 1)),
                                  child: Center(
                                    child: GradientText(
                                      'F',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold),
                                      colors: [
                                        const Color(0xffb138ab),
                                        Colors.blue.shade400,
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
