// import 'package:casino_app/Const/color.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

// class OTPBox extends StatelessWidget {
//   const OTPBox({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     dynamic color = 0;

//     Size size = MediaQuery.of(context).size;

//     return Container(
//         child: PinCodeTextField(
//       keyboardType: TextInputType.number,
//       textStyle:
//           const TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
//       // backgroundColor: Colors.grey,
//       appContext: context,
//       pastedTextStyle: const TextStyle(
//         color: Colors.grey,
//         fontWeight: FontWeight.bold,
//       ),
//       length: 4,
//       obscureText: false,
//       obscuringCharacter: '*',
//       // obscuringWidget: const FlutterLogo(
//       //   size: 24,
//       // ),
//       blinkWhenObscuring: true,
//       animationType: AnimationType.fade,
//       validator: (v) {
//         if (v!.length < 3) {
//           return "";
//         } else {
//           return null;
//         }
//       },
//       pinTheme: PinTheme(
//         selectedColor: Color(0xff3c4c56),
//         selectedFillColor: Color(0xff3c4c56),
//         activeFillColor: Color(0xff3c4c56),
//         inactiveFillColor: Color(0xff3c4c56),
//         inactiveColor: Color(0xff3c4c56),
//         activeColor: Color(0xff3c4c56),
//         disabledColor: Color(0xfff6f6f6),
//         shape: PinCodeFieldShape.box,
//         borderRadius: BorderRadius.circular(10),
//         fieldHeight: 55,
//         fieldWidth: 55,
//       ),
//       cursorColor: Colors.white,
//       animationDuration: const Duration(milliseconds: 300),
//       enableActiveFill: true,
//       // errorAnimationController: errorController,
//       // controller: textEditingController,
//       boxShadows: const [
//         BoxShadow(
//           offset: Offset(0, 1),
//           color: Colors.black12,
//           blurRadius: 10,
//         )
//       ],
//       onCompleted: (v) {
//         debugPrint("Completed");
//       },
//       // onTap: () {
//       //   print("Pressed");
//       // },
//       // onChanged: (value) {
//       //   debugPrint(value);
//       //   setState(() {
//       //     currentText = value;
//       //   });
//       // },
//       beforeTextPaste: (text) {
//         debugPrint("Allowing to paste $text");
//         //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//         //but you can show anything you want here, like your pop up saying wrong paste format or etc
//         return true;
//       },
//       onChanged: (String value) {},
//     ));
//   }
// }
