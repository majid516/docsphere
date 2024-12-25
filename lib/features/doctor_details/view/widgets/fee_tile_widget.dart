import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class FeeTileWidget extends StatelessWidget {
  const FeeTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * 0.9,
      height: 40,
      decoration: BoxDecoration(
        color: MyColors.primaryColor.withAlpha(50),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '₹500',
            style: CommonStyles.feeTextStyle,
          ),
          Space.wSpace10,
          Text(
            'Consultation fee, your wellness',
            style: CommonStyles.commonButtonBlackTextStyle,
          ),
        ],
      ),
    );
  }
}
