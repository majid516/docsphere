import 'dart:math';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            child: InkWell(
              onTap: () => context.push(MyRoutes.aiChattingScreen),
              child: Container(
                width: ScreenSize.width * 0.9,
                height: 40,
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Space.wSpace10,
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: MyColors.whiteColor,
                      backgroundImage:
                          AssetImage('asset/Drawer icons/ai_icon.png'),
                    ),
                    Space.wSpace10,
                    Text(
                      'Ask Docshpere Ai..',
                      style: TextStyle(
                        fontSize: 19,
                        color: MyColors.darkGreyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
