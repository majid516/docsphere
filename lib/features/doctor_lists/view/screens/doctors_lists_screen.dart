import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor_lists/view/widgets/doctor_list_tile.dart';
import 'package:flutter/material.dart';

class DoctorsListsScreen extends StatelessWidget {
  final String title;
  
  DoctorsListsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            title: title,
          )),
          backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              width: ScreenSize.width * 0.93,
              child: SearchBar(
               side: WidgetStatePropertyAll(
               BorderSide(color: MyColors.primaryColor)
               ),
               leading: Icon(Icons.search,color: MyColors.lightGreyColor,),
               backgroundColor: WidgetStatePropertyAll(MyColors.whiteColor),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15)),
                elevation: WidgetStatePropertyAll(1),
                hintText: 'seach your doctor',
                hintStyle:
                    WidgetStatePropertyAll(AuthenticationSyles.hintTextStyle),
              ),
            ),
          ),
          
          Expanded(
            child: ListView.separated(
              itemCount:5,
              itemBuilder: (context, index) {
                return DoctorListTile();
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Divider(
                    thickness: 7,
                    color: MyColors.lightGreyColor.withValues(alpha: 0.4),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
