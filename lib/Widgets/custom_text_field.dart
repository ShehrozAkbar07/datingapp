import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldd extends StatelessWidget {
  final String text;
  final String validatorText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final bool? obsecure;
  final Widget? prefix;
  final Widget? suffix;
  final bool? numbertyppe;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomTextFieldd(
      {Key? key,
      required this.text,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon,
      required this.obsecure,
      this.prefix,
      this.suffix,
      required this.numbertyppe,
      required this.validatorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.black), //<-- SEE HERE

      obscureText: obsecure!,
      textAlign: TextAlign.center,
      keyboardType: numbertyppe! ? TextInputType.number : keyboardType,
      // keyboardType: numbertyppe! ? keyboardType : TextInputType.number,
      autofillHints: const [
        AutofillHints.username,
        AutofillHints.password,
        AutofillHints.email,
        AutofillHints.telephoneNumber
      ],
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black, fontSize: 13.sp),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        // fillColor:  Color(AppColors.fillColor),
        filled: true,

        prefixIcon: prefixIcon,
        prefix: Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: prefix,
        ),
        suffix: suffix,
        hintText: text,
        hintStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(26.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(26.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(26.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
      },
    );
  }
}
