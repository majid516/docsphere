import 'dart:math';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/authentication/services/sigin_user.dart';
import 'package:flutter/material.dart';

class GoogleSignInWidget extends StatelessWidget {
  const GoogleSignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        signInWithGoogle(context);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 90 * pi / 180,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.hexagon_rounded,
                  size: 75,
                  color: MyColors.darkGreyColor,
                ),
                Icon(
                  Icons.hexagon_rounded,
                  size: 72,
                  color: MyColors.whiteColor,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 35,
            height: 35,
            child:
                Image.asset('asset/Drawer icons/google_img.png'),
          ),
        ],
      ),
    );
  }
}
