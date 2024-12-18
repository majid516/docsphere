
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/home/view/components/constants/text_style.dart';
import 'package:flutter/material.dart';

class DrawerItemsWidgets extends StatelessWidget {
  final String image;
   final Widget button;
   final String title;
   final Icon icon;
   final Icon leadingIcon;
   final VoidCallback action;
   final double size;

  const DrawerItemsWidgets({
   
    super.key,   required this.title,  required this.action,this.image = '',  this.button = const Icon(Icons.abc), this.icon = const Icon(Icons.arrow_forward_ios,size: 18,color: MyColors.darkGreyColor,),  this.leadingIcon =const Icon(Icons.settings,color: MyColors.darkGreyColor,),  this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: action,
      leading:image == '' ?leadingIcon: SizedBox(
              width:size,
              height: size,
              child: Image.asset(image,fit: BoxFit.cover,),
            ),
      title: Text(title, style: DrawerTextStyle.drawerCommonTextStyle,),
      trailing: icon,

    );
  }
}
