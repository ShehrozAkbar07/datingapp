import 'package:flutter/material.dart';

Widget customCircleImage(
    {double? radius, required String imgPath, Color? backgroundColor}) {
  return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      backgroundImage: AssetImage(imgPath));
}
