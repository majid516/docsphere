
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
class BookAppointmentButton extends StatelessWidget {
  final VoidCallback action;
  const BookAppointmentButton({
    super.key, required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: ScreenSize.width * 0.5,
        height: 45,
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            border: Border.all(color: MyColors.primaryColor),
            borderRadius: BorderRadius.circular(7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_add,
              color: MyColors.whiteColor,
            ),
            Text(
              'book appointment',
              style: CommonStyles.commonButtonWhiteTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}