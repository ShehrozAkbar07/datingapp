import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../Const/const.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

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
                  text: 'Settings',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      child: Column(
                        children: [
                          ExpansionTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 23.sp,
                                  color: textColor,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                const Text(
                                  'Account',
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              ListTile(
                                title: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.editprofile);
                                  },
                                  child: const Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.changepass);
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Change Password',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              const ListTile(
                                title: Text(
                                  'Get Verified',
                                  style: TextStyle(
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.card_giftcard,
                                  size: 23.sp,
                                  color: textColor,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                const Text(
                                  'Jobs',
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              ListTile(
                                title: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.jobs);
                                  },
                                  child: const Text(
                                    'Jobs',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.editjob);
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Edit Jobs',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.subscriptions,
                                  size: 23.sp,
                                  color: textColor,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    // Get.toNamed(AppRoutes.packages);
                                  },
                                  child: const Text(
                                    'Subscription',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              ListTile(
                                title: InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.packages);
                                  },
                                  child: const Text(
                                    'Change Package',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.paymentmethods);
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Change Payment Method',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.cancelsubscription);
                                },
                                child: const ListTile(
                                  title: Text(
                                    'Cancel Subscription',
                                    style: TextStyle(
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: InkWell(
                              onTap: () {
                                
                            

                                Get.toNamed(AppRoutes.login);
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    color: textColor,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  const Text(
                                    'Add Job',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: InkWell(
                              onTap: () {
                                _auth.signOut();
                                googleSignIn.signOut();
                                Fluttertoast.showToast(
                                    msg: 'Sign Out Successfully ');

                                Get.toNamed(AppRoutes.login);
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.logout,
                                    color: textColor,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  const Text(
                                    'Logout',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
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
