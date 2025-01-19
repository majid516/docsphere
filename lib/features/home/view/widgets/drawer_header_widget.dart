import 'dart:convert';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerHeaderWidget extends StatelessWidget {
  final UserModel user;
  const DrawerHeaderWidget({
    super.key,
    required this.user,
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
            child: user.profileImage == ''
                ? Icon(
                    Icons.person,
                    size: 45,
                    color: MyColors.primaryColor,
                  )
                : CircleAvatar(
                    radius: 32,
                    backgroundImage:
                        MemoryImage(base64Decode(user.profileImage)),
                  )),
      ),
      title: Text(
        user.name,
        style: CommonStyles.doctorNameStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: InkWell(
        onTap: () {
          context.push(MyRoutes.profileScreen, extra: user);
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
