import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/View/profile/recruiter/recruiter_profile.dart';
import 'package:x_app/View/profile/seeker/seeker_profile.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';

class Profile extends StatefulWidget {
  final String image;
  const Profile({super.key, required this.image});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late TabController tabController;

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
            Appbarr(
              text: 'Profile',
              iconsort: true,
            ),
            SizedBox(
              height: 30.h,
            ),
            tabContainer(tabController),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: [
              SeekersProfile(
                image: widget.image,
              ),
              const RecruiterProfile()
            ]))
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
        labelColor: const Color(0xffBF28A2),

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
