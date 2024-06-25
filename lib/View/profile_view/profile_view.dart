import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:x_app/AppRoutes/routes.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Const/const.dart';
import 'package:x_app/View/profile_view/peoplle_view_swipper.dart';
import 'package:x_app/Widgets/background_image.dart';

class PeopleView extends StatefulWidget {
  const PeopleView({
    super.key,
  });

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> with TickerProviderStateMixin {
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
            Container(
              height: 80.h,
              width: double.infinity,
              // color: secondary,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.liked);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Center(
                            child: Icon(Icons.favorite,
                                color: textColor, size: 18.sp)),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.toNamed(AppRoutes.notifications);
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: textColor, width: 1)),
                        child: Center(
                            child: Icon(Icons.tune_rounded,
                                color: black, size: 18.sp)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            tabContainer(tabController),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: const [PeopleviewSwapper(), PeopleviewSwapper()]))
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
