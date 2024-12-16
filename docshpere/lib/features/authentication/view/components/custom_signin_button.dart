import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback action;
  final bool isWhiteColor;
  const CustomSignInButton({
    super.key,
    required this.buttonText,
    required this.action,
    required this.isWhiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 350),
      child: Container(
        width: ScreenSize.width * 0.8,
        height: 50,
        decoration: BoxDecoration(
          color: !isWhiteColor? MyColors.primaryColor : MyColors.whiteColor,
          borderRadius: BorderRadius.circular(30),
          border: isWhiteColor ? Border.all(width: 2,color: MyColors.primaryColor):Border(),
        ),
        child: Center(
            child: Text(
          buttonText,
          style:isWhiteColor? AuthenticationSyles.buttonTextStyleBlue : AuthenticationSyles.buttonTextStyleWhite,
        )),
      ),
    );
  }
}
