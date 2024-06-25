import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';

class Button extends StatefulWidget {
  final String button_text;

  const Button({
    super.key,
    required this.button_text,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return
     Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffb138ab),
              Color(0xff915dbf),
              Color(0xff767dd0),
              Color(0xff5c9ae0),
              Color(0xff50a8e8)
            ],
          )),
      child: Center(
        child: Text(
          widget.button_text,
          style: TextStyle(
            fontSize: 19.sp,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
