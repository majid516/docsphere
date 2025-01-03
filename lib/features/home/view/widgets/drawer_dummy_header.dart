
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerDummyHeader extends StatelessWidget {
  const DrawerDummyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.all(0),
      leading: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: CircleAvatar(
          radius: 32,
          backgroundColor: MyColors.lightColor,
          child: Icon(
            Icons.person,
            size: 45,
            color: MyColors.primaryColor,
          ),
        ),
      ),
      title: Text(
        'User Name',
        style: CommonStyles.doctorNameStyle,
      ),
      subtitle: InkWell(
        onTap: () {
          context.push(MyRoutes.profileScreen);
        },
        child: Text(
          'view and edit profile',
          maxLines: 1,
          style: CommonStyles.viewProfileStyle,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
