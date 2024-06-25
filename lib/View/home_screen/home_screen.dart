import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/View/home_screen/recruiter/recruiter.dart';
import 'package:x_app/View/home_screen/seekers/seekers.dart';
import 'package:x_app/Widgets/background_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProfileImage(),
                  // Image.asset(
                  //   googleSignIn.currentUser?.photoUrl: 'assets/images/x.png',
                  //   height: 35.h,
                  //   width: 35.w,
                  //   fit: BoxFit.contain,
                  // ),
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: grey, width: 1)),
                    child: const Center(
                        child: Icon(
                      Icons.notifications_outlined,
                      color: textColor,
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            // Center(
            //   child: Container(
            //     height: 65.h,
            //     width: 330.w,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: const Color.fromARGB(200, 234, 229, 229)
            //             .withOpacity(0.4)),
            //     child: Column(
            //       children: [
            //         Padding(
            //           padding: EdgeInsets.symmetric(vertical: 2.h),
            //           child: TabBar(
            //               unselectedLabelColor: Colors.black,
            //               labelColor: whiteColor,
            //               indicatorPadding: EdgeInsets.zero,
            //               indicatorWeight: 0,
            //               indicatorSize: TabBarIndicatorSize.tab,
            //               indicator: BoxDecoration(
            //                   color: Colors.white,
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color:
            //                           const Color.fromARGB(255, 231, 221, 221)
            //                               .withOpacity(0.5),
            //                       spreadRadius: 5,
            //                       blurRadius: 7,
            //                       offset: const Offset(
            //                           0, 4), // changes position of shadow
            //                     ),
            //                   ],
            //                   borderRadius: BorderRadius.circular(28)),
            //               controller: tabController,
            //               tabs: const [
            //                 Tab(
            //                   text: 'Imported',
            //                 ),
            //                 Tab(
            //                   text: 'Syncs',
            //                 ),
            //               ]),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            tabContainer(tabController),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: const [Seekers(), Recruiter()]))
          ]),
        ))
      ],
    );
  }
}

Widget tabContainer(TabController tabController) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Container(
      height: 38.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(200, 234, 229, 229).withOpacity(0.4),
        border: Border.all(color: const Color(0xffe0e0e0), width: .5),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: TabBar(
        labelStyle: TextStyle(
            fontSize: 17.sp,
            color: const Color(0xffBF28A2),
            fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(
            fontSize: 14, color: Colors.blue, fontWeight: FontWeight.bold),
        // labelStyle: const TextStyle(fontSize: 14, color: Colors.yellow),
        controller: tabController,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            color: whiteColor),
        labelColor: Color(0xffBF28A2),

        tabs: const [
          Tab(
            text: 'Seekers',
          ),
          Tab(
            text: 'Recruiters',
          ),
        ],
      ),
    ),
  );
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

Widget buildProfileImage() {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  if (googleSignIn.currentUser != null) {
    return Image.network(
      googleSignIn.currentUser!.photoUrl!,
      fit: BoxFit.cover, // Adjust the fit as needed
      // Other image properties if required
    );
  } else {
    return Image.asset(
      'assets/images/x.png',
      height: 35.h,
      width: 35.w,
      fit: BoxFit.contain,
    );
  }
}
