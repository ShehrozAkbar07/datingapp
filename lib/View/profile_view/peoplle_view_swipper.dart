import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Const/const.dart';
import 'package:x_app/View/profile_view/profile_view_controller.dart';
import 'package:x_app/Widgets/background_image.dart';

class PeopleviewSwapper extends StatefulWidget {
  const PeopleviewSwapper({super.key});

  @override
  State<PeopleviewSwapper> createState() => _PeopleviewSwapperState();
}

class _PeopleviewSwapperState extends State<PeopleviewSwapper> {
  PeopleViewController controller = Get.put(PeopleViewController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 0.55.sh,
                child: CardSwiper(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  onEnd: () {
                    print("Ended");
                  },
                  isLoop: true,
                  cardsCount: controller.card.length,
                  cardBuilder: (BuildContext context, int index) {
                    return GetBuilder(
                        init: controller,
                        builder: (_) {
                          return Center(
                            child: Container(
                              height: 700.h,
                              width: 340.w,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(22),
                                // image: DecorationImage(
                                //     image: AssetImage(
                                //       controller.card[index],
                                //     ),
                                //     fit: BoxFit.cover),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height: 380.h,
                                      width: 320.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        image: DecorationImage(
                                            image: AssetImage(
                                              controller.card[index],
                                            ),
                                            fit: BoxFit.cover),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 190.h,
                                          ),
                                          Text(
                                            controller.namelist[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: whiteColor,
                                                fontSize: 28.sp),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text(
                                            "HAMBURG, GERMANY",
                                            style: TextStyle(
                                                fontSize: 23.sp,
                                                color: const Color.fromARGB(
                                                    255, 234, 234, 234),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    height: 50.h,
                                    width: 200.w,
                                    // color: Colors.blue,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 40.h,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 156, 156, 156)
                                                    .withOpacity(0.3),
                                                spreadRadius: 5,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons.close,
                                            color: black,
                                          )),
                                        ),
                                        Container(
                                          height: 40.h,
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: textColor),
                                            color: whiteColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color.fromARGB(
                                                        255, 156, 156, 156)
                                                    .withOpacity(0.3),
                                                spreadRadius: 5,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons.favorite_outline,
                                            color: black,
                                          )),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ]),
          ),
        ))
      ],
    );
  }
}

Widget recentPosting(String image) {
  return Container(
    height: 90.h,
    width: 85.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
    child: Column(children: [
      SizedBox(
        height: 37.h,
      ),
      Container(
        height: 25.h,
        width: 25.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/apple.png'),
        )),
      ),
      SizedBox(
        height: 6.h,
      ),
      Text(
        "CEO",
        style: TextStyle(
            fontSize: 13.sp, color: whiteColor, fontWeight: FontWeight.bold),
      ),
    ]),
  );
}

Widget recenJob() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Container(
      height: 310.h,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(32.sp),
          image: const DecorationImage(
              image: AssetImage('assets/images/seek.png'),
              fit: BoxFit.contain)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 30.w),
          child: Container(
            height: 20.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: const Color(0xfff1f0ee),
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 147, 147, 147).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset:
                      const Offset(0, 3), // changes the position of the shadow
                ),
              ],
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: textColor,
                      size: 14.sp,
                    ),
                    Text(
                      'London',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12.sp),
                    ),
                  ],
                )),
          ),
        )
      ]),
    ),
  );
}
