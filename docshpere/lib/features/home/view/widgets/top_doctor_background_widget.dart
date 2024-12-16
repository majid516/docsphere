import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class TopDoctorBackgroundwidget extends StatelessWidget {
  const TopDoctorBackgroundwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: ScreenSize.width,
          height: ScreenSize.height * 0.42,
          color: MyColors.primaryColor,
        ),
        Positioned(
          left: -100,
          top: 30,
          child: Transform.rotate(
            angle: 25 * pi / 180,
            child: Container(
              width: ScreenSize.width * 0.47,
              height: ScreenSize.height * 0.35,
              decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60))),
            ),
          ),
        ),
        Positioned(
          left: -130,
          top: 60,
          child: Transform.rotate(
            angle: 25 * pi / 180,
            child: Container(
              width: ScreenSize.width * 0.37,
              height: ScreenSize.height * 0.35,
              decoration: BoxDecoration(
                  color: MyColors.ternaryColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60))),
            ),
          ),
        ),
        Positioned(
          right: -90,
          top: 60,
          child: Transform.rotate(
            angle: -25 * pi / 180,
            child: Container(
              width: ScreenSize.width * 0.37,
              height: ScreenSize.height * 0.35,
              decoration: BoxDecoration(
                  color: MyColors.secondaryColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(60))),
            ),
          ),
        ),
        Positioned(
          right: -140,
          top: 90,
          child: Transform.rotate(
            angle: -25 * pi / 180,
            child: Container(
              width: ScreenSize.width * 0.37,
              height: ScreenSize.height * 0.35,
              decoration: BoxDecoration(
                  color: MyColors.ternaryColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(60))),
            ),
          ),
        ),
      ],
    );
  }
}
