import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/toast.dart';
import 'package:x_app/View/Auth/change_password/signup/signup_google.dart';
import 'package:x_app/View/Auth/change_password/signup/user_model.dart';
import 'package:x_app/Widgets/background_image.dart';
import 'package:x_app/Widgets/bottom_nav_bar.dart';
import '../../../../Const/color.dart';
import '../../../../Const/const.dart';
import '../../../../Widgets/custom_buton.dart';
import '../../../../Widgets/custom_text_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController cnfrmpass = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool obsecure = false;
  bool obsecure2 = false;
  String? mySelection1;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  String? mySelection2;
  List<Map<String, String>> location = [
    {'Duration': 'Tokyo'},
    {'Duration': 'Beging'},
    {'Duration': 'Rio'},
    {'Duration': 'Istanbul'},
  ];
  List<Map<String, String>> countries = [
    {'Duration': 'USA'},
    {'Duration': 'UK'},
    {'Duration': 'ITALY'},
    {'Duration': 'CHINA'},
    {'Duration': 'MALAYSIA'},
    {'Duration': 'BRAZIL'},
    {'Duration': 'TRUKEY'},
    {'Duration': 'AZERBAIJAN'},
    {'Duration': 'TAIWAN'},
    {'Duration': 'RUSSIA'},
    {'Duration': 'MONGOLIA'},
    {'Duration': 'NEWZELAND'},
  ];

  // Future<void> signInWithGoogle() async {
  //   try {
  //     // Perform Google Sign-In
  //     GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

  //     if (googleSignInAccount != null) {
  //       // Get user details
  //       String? userName = googleSignInAccount.displayName;
  //       String? userEmail = googleSignInAccount.email;
  //       String? userPhotoUrl = googleSignInAccount.photoUrl;
  //       String userId = googleSignInAccount.id;

  //       // Create a map with user data
  //       Map<String, dynamic> userData = {
  //         'name': userName,
  //         'email': userEmail,
  //         'photoUrl': userPhotoUrl,
  //         // Add other necessary user data
  //       };

  //       // Store user data in Firestore
  //       await _firestore.collection('users').doc(userId).set(userData);
  //       Get.toNamed(AppRoutes.bottomnav);
  //     }
  //   } catch (error) {
  //     print('Error signing in with Google: $error');
  //     // Handle error
  //   }
  // }

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
                            "Already have an account?",
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
                              Get.toNamed(AppRoutes.login);
                            },
                            child: GradientText(
                              'LOGIN NOW',
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
              Flexible(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60.h,
                      ),
                      Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                              fontSize: 26.sp,
                              color: textColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.w),
                        child: CustomTextFieldd(
                            validatorText: 'Please Enter Name',
                            text: 'Name',
                            controller: name,
                            obsecure: false,
                            numbertyppe: false),
                      ),
                      SizedBox(
                        height: 12.h,
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
                            validatorText: 'Please Enter Phone',
                            text: 'Phone',
                            controller: phone,
                            obsecure: false,
                            numbertyppe: true),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.w),
                        child: Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: grey, width: 1),
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.transparent),
                          child: DropdownButton<String>(
                            icon: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 20.sp,
                              ),
                            ),
                            underline: const SizedBox(),
                            isExpanded: true,
                            hint: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.h, left: 100.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("City / Town",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: black,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            value: mySelection1,
                            onChanged: (newValue) {
                              setState(() {
                                mySelection1 = newValue!;
                              });
                            },
                            items: location.map((Map map) {
                              return DropdownMenuItem<String>(
                                value: map['Duration'].toString(),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.h, left: 100.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            map['Duration'].toString(),
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                height: 1.4,
                                                color: black),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.w),
                        child: Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: grey, width: 1),
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.transparent),
                          child: DropdownButton<String>(
                            icon: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                size: 20.sp,
                              ),
                            ),
                            underline: const SizedBox(),
                            isExpanded: true,
                            hint: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.h, left: 100.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Countries",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: black,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            value: mySelection2,
                            onChanged: (newValue) {
                              setState(() {
                                mySelection2 = newValue!;
                              });
                            },
                            items: countries.map((Map map) {
                              return DropdownMenuItem<String>(
                                value: map['Duration'].toString(),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.h, left: 100.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            map['Duration'].toString(),
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                height: 1.4,
                                                color: black),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
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
                            obsecure: true,
                            numbertyppe: false),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.w),
                        child: CustomTextFieldd(
                            validatorText: 'Please Enter Password',
                            text: 'Retype Password',
                            controller: cnfrmpass,
                            obsecure: true,
                            numbertyppe: false),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      InkWell(
                        onTap: () async {
                          await _auth.createUserWithEmailAndPassword(
                              email: email.text.toString(),
                              password: pass.text.toString());
                          Get.toNamed(AppRoutes.bottomnav);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 70.w,
                          ),
                          child: const Button(
                            button_text: 'SIGNUP NOW',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Center(
                        child: Container(
                          height: 45.h,
                          width: 120.w,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  // await signInWithGoogle();

                                  if (_auth.currentUser != null ||
                                      googleSignIn.currentUser != null) {
                                    Get.toNamed(AppRoutes.bottomnav);
                                  } else {
                                    print("Nanga nacho bc");
                                  }

                                  // provider.logout();
                                },
                                child: Container(
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
              ))
            ],
          ),
        )
      ],
    );
  }

  postDetailToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    User? user = _auth.currentUser;

    Usermodel usermodel = Usermodel();

    // writing all the values
    usermodel.uid = _auth.currentUser!.uid;
    usermodel.email = email.text;
    usermodel.name = name.text;
    usermodel.phone = phone.text;
    usermodel.city = mySelection1;
    usermodel.country = mySelection2;

    usermodel.uid = user!.uid;

    await firebaseFirestore
        .collection("job-seeker")
        .doc(user.uid)
        .set(usermodel.toMap());

    Fluttertoast.showToast(msg: 'Account created Successfully ');

    //  Navigator.push(
    //     context, MaterialPageRoute(builder: ((context) => Login())));
  }
}
