
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
class MessageButton extends StatelessWidget {
  final VoidCallback action;
  const MessageButton({
    super.key, required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: ScreenSize.width * 0.4,
        height: 45,
        decoration: BoxDecoration(
            color: MyColors.whiteColor,
            border: Border.all(color: MyColors.primaryColor),
            borderRadius: BorderRadius.circular(7)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message_rounded,
              color: MyColors.primaryColor,
            ),
            Space.wSpace5,
            Text(
              'message',
              style: CommonStyles.commonButtonBlueTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
