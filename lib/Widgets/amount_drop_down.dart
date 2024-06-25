import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class AmountDrooDown extends StatefulWidget {
  const AmountDrooDown({super.key});

  @override
  State<AmountDrooDown> createState() => _AmountDrooDownState();
}

class _AmountDrooDownState extends State<AmountDrooDown> {
  List<Map<String, String>> amountt = [
    {
      "amount": "NGN",
      'currency': '₦‎',
      "image": "assets/images/pink.png",
    },
    {"image": "assets/images/pink.png", "amount": "USD", "currency": '\$'},
    {"image": "assets/images/pink.png", "amount": "EUR", "currency": '\€'},
  ];
  String? _mySelection2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: primary, width: 1),
          color: bg,
          borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(27)),
            height: 42.h,
            width: 140.w,
            child: DropdownButton<String>(
              icon: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 35,
                ),
              ),
              underline: const SizedBox(),
              isExpanded: true,
              hint: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: const BoxDecoration(
                          color: primary, shape: BoxShape.circle),
                      child: const Center(
                        child: Text(
                          "A",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                      // child: Image.asset(map['image'].toString()),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CURR',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
              value: _mySelection2,
              onChanged: (newValue) {
                setState(() {
                  _mySelection2 = newValue;
                });
              },
              items: amountt.map((Map map) {
                return DropdownMenuItem<String>(
                  value: map['amount'].toString(),
                  child: Row(
                    children: [
                      Center(
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: const BoxDecoration(
                              color: primary, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              map["currency"].toString(),
                              style: const TextStyle(color: whiteColor),
                            ),
                          ),
                          // child: Image.asset(map['image'].toString()),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(map['amount'].toString(),
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.bold)),
                            // Text(
                            //   map['cardnum'].toString(),
                            //   style: TextStyle(
                            //       fontSize: 12.sp, height: 1.4, color: grey),
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Text(
            '3000',
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
