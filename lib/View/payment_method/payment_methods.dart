import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_app/Const/color.dart';
import 'package:x_app/Widgets/app_bar.dart';
import 'package:x_app/Widgets/background_image.dart';
import '../../Const/const.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Appbarr(
                  iconsort: true,
                  text: 'Payment Methods',
                ),
                Flexible(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            imageContainer('assets/images/paypal.png'),
                            imageContainer('assets/images/master.png'),
                            imageContainer('assets/images/aexpress.png'),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          "Other Payment Methods",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 6.5.h,
                          width: 160.w,
                          child: const Divider(
                            color: grey,
                            height: 1.6,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        paymentmethods(
                            'assets/images/card.png', 'Credit / Debit Card'),
                        SizedBox(
                          height: 30.h,
                        ),
                        paymentmethods(
                            'assets/images/amazon.png', 'Amazon Pay'),
                        SizedBox(
                          height: 30.h,
                        ),
                        paymentmethods(
                            'assets/images/payoneer.png', 'Payoneer'),
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
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

Widget paymentmethods(String image, String title) {
  return Row(
    children: [
      Image.asset(
        image,
        height: 35.h,
        width: 30.w,
      ),
      SizedBox(
        width: 30.w,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 18.sp,
          color: textColor,
        ),
      ),
    ],
  );
}
