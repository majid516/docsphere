import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class BackgroudStackWidget extends StatelessWidget {
  const BackgroudStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width,
      height: ScreenSize.height,
      color: MyColors.whiteColor,
      child: Stack(
        children: [
          Container(
            width: ScreenSize.width,
            height: ScreenSize.height * 0.48,
            color: MyColors.primaryColor,
          ),
          Positioned(
            left: ScreenSize.width * 0.45,
            top: -ScreenSize.height * 0.03,
            child: Transform.rotate(
              angle: 25 * pi / 180,
              child: Container(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.4,
                decoration: BoxDecoration(
                    color: MyColors.secondaryColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75))),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.width * 0.76,
            top: -ScreenSize.height * 0.04,
            child: Transform.rotate(
              angle: 25 * pi / 180,
              child: Container(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.4,
                decoration: BoxDecoration(
                    color: MyColors.ternaryColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(75))),
              ),
            ),
          ),
          Positioned(
            left: -ScreenSize.width * 0.18,
            top: ScreenSize.height * 0.12,
            child: Transform.rotate(
              angle: 27 * pi / 180,
              child: Container(
                width: ScreenSize.width * 0.3,
                height: ScreenSize.height * 0.3,
                decoration: BoxDecoration(
                    color: MyColors.secondaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(75))),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.width * 0.047,
            top: ScreenSize.height * 0.37,
            child: Transform.rotate(
              angle: 25 * pi / 180,
              child: Container(
                width: ScreenSize.width,
                height: ScreenSize.width * 0.5,
                decoration: BoxDecoration(
                    color: MyColors.whiteColor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(130))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
