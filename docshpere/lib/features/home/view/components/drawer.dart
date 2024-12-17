import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/widgets/drawer_icon_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      backgroundColor: MyColors.whiteColor,
      width: ScreenSize.width *0.8,
      child: ListView(
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: ListTile(
                horizontalTitleGap: 0,
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 32,
                ),
                title: Text(
                  'Majid',
                  style: CommonStyles.doctorNameStyle,
                ),
                subtitle: InkWell(
                  onTap: () {},
                  child: Text(
                    'view and edit profile',
                    maxLines: 1,
                    style: CommonStyles.commonButtonBlackTextStyle,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          DrawerItemsWidgets(title: 'Appointment', action: (){},image: 'asset/Drawer icons/appointment.png',),
          DrawerItemsWidgets(title: 'Consultation', action: (){},image: 'asset/Drawer icons/cusultations.png',),
          DrawerItemsWidgets(title: 'My Doctor', action: (){},image: 'asset/Drawer icons/doctor.png',),
          DrawerItemsWidgets(title: 'Medical Records', action: (){},image: 'asset/Drawer icons/medical_records.png',),
          DrawerItemsWidgets(title: 'Upcoming Sessions', action: (){},image: 'asset/Drawer icons/appointment.png',),
          DrawerItemsWidgets(title: 'Reminder', action: (){},leadingIcon: Icon(Icons.alarm,size: 38,color: MyColors.blueIconsColor,)),
          DrawerItemsWidgets(title: 'Payments', action: (){},leadingIcon: Icon(Icons.account_balance_wallet_rounded,size: 36,color: MyColors.blueIconsColor,),),
          DrawerItemsWidgets(title: 'Location', action: (){},leadingIcon: Icon(Icons.location_on,size: 38,color: MyColors.blueIconsColor,),),
          Divider(
          thickness: 12,color: MyColors.lightGreyColor.withValues(alpha: 0.4),
          ),
          DrawerItemsWidgets(title: 'settings', action: (){},),
          DrawerItemsWidgets(title: 'Like us? Give 5 stars', action: (){},leadingIcon: Icon(Icons.thumb_up_off_alt_outlined,color: MyColors.darkGreyColor,)),
          DrawerItemsWidgets(title: 'Are you a doctor', action: (){},image: 'asset/Drawer icons/doc_n.png',size: 22,),
          DrawerItemsWidgets(title: 'Help Center', action: (){},leadingIcon: Icon(Icons.help_outline_outlined,color: MyColors.darkGreyColor,),),
          Divider(
          thickness: 12,color: MyColors.lightGreyColor.withValues(alpha: 0.4),
          ),
          ListTile(
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: MyColors.primaryColor),),
                 Space.wSpace15,
                Icon(Icons.logout_rounded,color: MyColors.blueIconsColor,),
              ],
            ),
          )
        ],  
      ),
    );
  }
}
