import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class GameImplementation extends StatelessWidget {
  const GameImplementation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Center(
          child: InkWell(
            onTap: _launchURL,
            child: Container(
              height: 200.h,
              width: 300.w,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(17)),
            ),
          ),
        )
      ]),
    ));
  }
}

_launchURL() async {
  const url =
      'https://www.friv.com/z/games/penaltyshootoutmultileague/game.html';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
