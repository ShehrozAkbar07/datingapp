import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';
import '../Const/const.dart';

class AddressContainer extends StatefulWidget {
  final Color checkboxcolor;
  bool? checkvalue;
  final String address;
  AddressContainer(
      {super.key,
      required this.checkvalue,
      required this.address,
      required this.checkboxcolor});

  @override
  State<AddressContainer> createState() => _AddressContainerState();
}

class _AddressContainerState extends State<AddressContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        height: 115.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xfff7f9fa),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   height: 40.h,
                  //   width: 40.w,
                  //   color: primary,
                  // ),

                  Theme(
                    data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 216, 216, 216)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)))),
                    child: Checkbox(
                      checkColor: whiteColor,
                      activeColor: widget.checkboxcolor,
                      value: this.widget.checkvalue,
                      onChanged: (bool? value) {
                        setState(() {
                          this.widget.checkvalue = value!;
                        });
                      },
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.address,
                        style: TextStyle(
                            height: 1.2,
                            fontSize: 19.sp,
                            color: black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "234 819 2932 392",
                        style: TextStyle(
                            height: 1.7,
                            fontSize: 16.sp,
                            color: grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Surulere Street, Ikeja Lagos",
                        style: TextStyle(
                            height: 1.7,
                            fontSize: 16.sp,
                            color: grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.edit,
                    size: 25,
                    color: grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
