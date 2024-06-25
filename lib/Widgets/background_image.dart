import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackGroundImage extends StatefulWidget {
  const BackGroundImage({super.key});

  @override
  State<BackGroundImage> createState() => _BackGroundImageState();
}

class _BackGroundImageState extends State<BackGroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage("assets/images/back.png"), fit: BoxFit.cover)),
    );
  }
}
