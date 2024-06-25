import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class SelectSourceDropDown extends StatefulWidget {
  const SelectSourceDropDown({super.key});

  @override
  State<SelectSourceDropDown> createState() => _SelectSourceDropDownState();
}

class _SelectSourceDropDownState extends State<SelectSourceDropDown> {
  String? _mySelection;

  List<Map<String, String>> myJson = [
    {
      "image": "assets/images/mastercard_logo.png",
      'title': "10% Cash Back",
      'cardnum': "5282 **** **** 7824 | 06/27",
      'Date': 'Apr 01'
    },
    {
      "image": "assets/images/pink.png",
      'title': "Card Top up",
      'cardnum': "₦40,000 added to your card",
      'Date': 'Mar 30'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: bg),
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
            SizedBox(
              width: 10.w,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(14)),
              child: Center(
                child: Container(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/mastercard_logo.png'),
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Examp;e',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: black,
                          fontWeight: FontWeight.bold)),
                  Text(
                    'Example2',
                    style: TextStyle(fontSize: 12.sp, height: 1.4, color: grey),
                  ),
                ],
              ),
            )
          ],
        ),
        value: _mySelection,
        onChanged: (newValue) {
          setState(() {
            _mySelection = newValue;
          });
        },
        items: myJson.map((Map map) {
          return DropdownMenuItem<String>(
            value: map['title'].toString(),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(14)),
                  child: Center(
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      child: Image.asset(map['image'].toString()),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(map['title'].toString(),
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: black,
                              fontWeight: FontWeight.bold)),
                      Text(
                        map['cardnum'].toString(),
                        style: TextStyle(
                            fontSize: 12.sp, height: 1.4, color: grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
