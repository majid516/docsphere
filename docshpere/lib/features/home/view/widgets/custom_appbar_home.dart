import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class CustomAppBarInHomeWidget extends StatelessWidget {
  const CustomAppBarInHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: MyColors.themeGradient,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: ScreenSize.width * 0.1,
          child: Transform.rotate(
            angle: -60 * pi / 180,
            child: Container(
              width: ScreenSize.width * 0.6,
              height: ScreenSize.width,
              decoration: BoxDecoration(
               
                color: MyColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 25,
          right: 25,
          child: SizedBox(
            height: 45,
            child: SearchBar(
              backgroundColor: WidgetStatePropertyAll(MyColors.whiteColor),
              leading: Icon(Icons.search, color: MyColors.darkGreyColor,),
              elevation: WidgetStatePropertyAll(5),
              padding: WidgetStatePropertyAll(EdgeInsets.only(left: 12)),
              hintText: 'Search your category',
              hintStyle: WidgetStatePropertyAll(
                TextStyle(
                  fontSize: 20,
                  color: MyColors.darkGreyColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
