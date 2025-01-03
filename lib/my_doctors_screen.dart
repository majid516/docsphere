import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyDoctorsScreen extends StatelessWidget {
  const MyDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.go(MyRoutes.home),
            title: 'My Doctors',
          )),
      backgroundColor: MyColors.whiteColor,
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTNYV0mFUcCc3pl88tncRJ-FO2YqwNFsu03A&s',
            ),
          ),
          title: Text(
            'Dr Lauren Hump',
            style: CommonStyles.doctorNameStyle,
          ),
          subtitle: Text(
            'General Physician',
            style: CommonStyles.doctorDetailsStyle,
          ),
        ),
        separatorBuilder: (context, index) => CommonDivider(),
      ),
    );
  }
}




