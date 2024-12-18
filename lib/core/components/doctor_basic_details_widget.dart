import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class DoctorBasicDetailsCard extends StatelessWidget {
  const DoctorBasicDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ScreenSize.width,
        height: ScreenSize.height * 0.17,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: ScreenSize.width * 0.3,
              height: ScreenSize.height * 0.2,
              child: Container(
                width: ScreenSize.width * 0.2,
                height: ScreenSize.width * 0.2,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTNYV0mFUcCc3pl88tncRJ-FO2YqwNFsu03A&s'))),
              ),
            ),
            SizedBox(
              width: ScreenSize.width * 0.7,
              height: ScreenSize.height * 0.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dr Robert Kalvin',
                    style: CommonStyles.doctorNameStyle,
                  ),
                  Text(
                    'General Physician',
                    style: CommonStyles.doctorDetailsStyle,
                  ),
                  Text(
                    '14 years experience',
                    style: CommonStyles.doctorDetailsStyle,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_rounded,
                        color: MyColors.primaryColor,
                      ),
                      Text(
                        ' 235 Patient Stories',
                        style: CommonStyles.doctorDetailsStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
