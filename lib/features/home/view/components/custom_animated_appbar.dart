import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/home/view/widgets/custom_appbar_home.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAnimatedAppbar extends StatelessWidget {
  const CustomAnimatedAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120,
      backgroundColor: MyColors.secondaryColor,
      floating: false,
      pinned: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      )),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu_sharp,
                      weight: 4, size: 28, color: MyColors.whiteColor),
                ),
                Space.wSpace15,
                Text(
                  'DocSphere',
                  style: CommonStyles.appNameStyle
                      .copyWith(color: MyColors.whiteColor),
                ),
              ],
            ),
            IconButton(onPressed: (){
              context.push(MyRoutes.notificationScreen);
            }, icon: Icon(Icons.notifications_active,
                size: 28, color: MyColors.whiteColor)),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: CustomAppBarInHomeWidget(),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
