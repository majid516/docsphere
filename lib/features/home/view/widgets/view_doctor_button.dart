import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewDoctorButton extends StatelessWidget {
  final String uid;
  const ViewDoctorButton({
    super.key,
    required this.uid,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(MyRoutes.doctorDetailsScreen,
          extra: {'uid': uid, 'consultationType': ''}),
      child: Container(
        width: ScreenSize.width * 0.4,
        height: 30,
        decoration: BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            'view doctor',
            style: CommonStyles.commonButtonWhiteTextStyle,
          ),
        ),
      ),
    );
  }
}
