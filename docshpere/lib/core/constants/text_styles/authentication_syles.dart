//! authentication text styles

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class AuthenticationSyles {
  static const TextStyle mainHeadingStyle = TextStyle(fontSize: 35,color: MyColors.whiteColor,fontWeight: FontWeight.w700);
  static const TextStyle hintTextStyle = TextStyle(fontSize: 20,color: MyColors.lightGreyColor,fontWeight: FontWeight.w400);
  static const TextStyle buttonTextStyleWhite = TextStyle(fontSize: 27,color: MyColors.whiteColor,fontWeight: FontWeight.w700);
  static const TextStyle buttonTextStyleBlue = TextStyle(fontSize: 27,color: MyColors.primaryColor,fontWeight: FontWeight.w700);
  static const TextStyle forgotPassStyle = TextStyle(fontSize: 22,color: MyColors.primaryColor,fontWeight: FontWeight.w600);
  static const TextStyle normalText = TextStyle(fontSize: 20,color: MyColors.blackColor,fontWeight: FontWeight.w500);
  static const TextStyle signupOrRegisterTextButtonStyle = TextStyle(fontSize: 23,color: MyColors.primaryColor,fontWeight: FontWeight.w700);
}