import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Const/color.dart';

class DropDown extends StatefulWidget {
  final String hinttext;
  List<Map<String, String>> myJson;
  DropDown({super.key, required this.myJson, required this.hinttext});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? mySelection1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child:
       Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: grey, width: 0.5),
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
                padding: EdgeInsets.only(top: 8.h, left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.hinttext,
                        style: TextStyle(
                          fontSize: 15.sp,
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
          items: widget.myJson.map((Map map) {
            return DropdownMenuItem<String>(
              value: map['Duration'].toString(),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          map['Duration'].toString(),
                          style: TextStyle(
                              fontSize: 14.sp, height: 1.4, color: black),
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
    );
  }
}
