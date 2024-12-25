
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:flutter/material.dart';

class ViewDoctorProfileButton extends StatelessWidget {
  final VoidCallback action;
  const ViewDoctorProfileButton({
    super.key, required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
       width: 130,
       height: 35,
       decoration: BoxDecoration(
        color: MyColors.whiteColor,
        border: Border.all(color: MyColors.primaryColor),
        borderRadius: BorderRadius.circular(5)
       ),
       child: Center(child: Text('view profile',style: CommonStyles.commonButtonBlackTextStyle,)),
      ),
    );
  }
}
