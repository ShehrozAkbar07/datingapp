import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/AppRoutes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  String splashImage = "splash1";
  late AnimatedSwitcher animatedSwitcher;

  startTime() async {
    Duration duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void changeSplashImage() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        splashImage = "splash2";
      });
    });
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        splashImage = "splash3";
      });
    });
  }

  void navigationPage() async {
    // Get.toNamed(AppRoutes.onboard);
    Get.toNamed(AppRoutes.login);
  }

  @override
  void initState() {
    super.initState();
    // changeSplashImage();
    animatedSwitcher = const AnimatedSwitcher(duration: Duration(seconds: 3));
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: primary,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // Image.asset(
            //   "assets/images/splash.png",
            //   fit: BoxFit.cover,
            // ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    // width: Dimens.width10,
                    // height: Dimens.height10,
                    width: double.infinity,
                    height: animation.value * 650,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       left: Dimens.width8, bottom: Dimens.height2),
                  //   child:
                  // ),

                  // Container(
                  //   height: 60.h,
                  //   width: 300.w,
                  //   decoration: BoxDecoration(
                  //     // color: primary,
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: Center(
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 15),
                  //       child: Text(
                  //         "Trade Anytime, Anywhere!! ",
                  //         style: TextStyle(
                  //           color: black,
                  //           fontSize: 18.sp,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void whereToGo() async {}
}
