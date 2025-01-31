import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view/widgets/detail_card.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;
  final String profileImage;
  final String contactNumber;
  final String dob;
  final String bloodGroup;
  final String gender;
  const ProfileScreen({
    super.key,
    required this.name,
    required this.email,
    required this.profileImage,
    required this.contactNumber,
    required this.dob,
    required this.bloodGroup,
    required this.gender, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.push(MyRoutes.home);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
            )),
        centerTitle: true,
        title: Text(
          'profile',
          style: CommonStyles.appbarTitleBlackStyle,
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.push(MyRoutes.editProfileScreen,
                    extra: UserModel(
                        name: name,
                        email: email,
                        profileImage: profileImage,
                        contactNumber: contactNumber,
                        dob: dob,
                        bloodGroup: bloodGroup,
                        gender: gender,
                        ));
              },
              child: Text(
                'edit',
                style: CommonStyles.commonButtonBlueTextStyle,
              )),
          Space.wSpace15
        ],
        backgroundColor: MyColors.whiteColor,
      ),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            profileImage == ''
                ? CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.person,
                      color: MyColors.secondaryColor,
                      size: 50,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.width * 0.33),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.memory(
                          base64Decode(profileImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
            SizedBox(height: 20),
            detailCard("Name", name),
            detailCard("Email", email),
            detailCard("Contact Number", contactNumber),
            detailCard("Date of Birth", dob),
            detailCard("Blood Group", bloodGroup),
            detailCard("Gender", gender),
          ],
        ),
      ),
    );
  }
}
