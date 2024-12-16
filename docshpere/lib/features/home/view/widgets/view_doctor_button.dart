import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class ViewDoctorButton extends StatelessWidget {
  const ViewDoctorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * 0.4,
      height: 35,
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(6)),
      child: Center(
        child: Text(
          'view doctor',
          style: CommonStyles.commonButtonWhiteTextStyle,
        ),
      ),
    );
  }
}
