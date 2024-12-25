import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: ScreenSize.width,
          height: 120,
          color: MyColors.primaryColor,
        ),
        Positioned(
          right: -10,
          child: Transform.rotate(
            angle: 15 * pi / 180,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              child: Container(
                width: ScreenSize.width * 0.4,
                height: 100,
                color: MyColors.secondaryColor,
              ),
            ),
          ),
        ),
        Positioned(
          right: -100,
          child: Transform.rotate(
            angle: 15 * pi / 180,
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
              child: Container(
                width: ScreenSize.width * 0.4,
                height: 100,
                color: MyColors.ternaryColor,
              ),
            ),
          ),
        ),
        Positioned(
          bottom:20 ,
          child: Row(
            children: [
              Space.wSpace20,
              Icon(
                Icons.arrow_back_ios,
                color: MyColors.whiteColor,
                size: 24,
              ),
              Space.wSpace10,
              Text(title,
              style: CommonStyles.appbarTitleStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
