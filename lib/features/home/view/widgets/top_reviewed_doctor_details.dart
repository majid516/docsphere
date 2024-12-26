import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/widgets/view_doctor_button.dart';
import 'package:flutter/material.dart';


class TopReviewedDoctorDetailsWidget extends StatelessWidget {
  const TopReviewedDoctorDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.31,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.offline_bolt,
                      size: 28,
                      color: MyColors.whiteColor,
                    ),
                    Text(
                      ' Top reviewed doctors',
                      style: HomeScreenStyles.normalText1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Text(
                  'explore best doctors and more...',
                  style: HomeScreenStyles.smallText1,
                ),
              ],
            ),
          ),
          Space.hSpace20,
          Container(
            width: ScreenSize.width * 0.96,
            height: ScreenSize.height * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: MyColors.whiteColor,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical :20.0,horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        width: ScreenSize.width * 0.26,
                        height: ScreenSize.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTNYV0mFUcCc3pl88tncRJ-FO2YqwNFsu03A&s',
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ScreenSize.width * 0.65,
                  height: ScreenSize.height * 0.22,
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
                      Space.hSpace15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ViewDoctorButton(),
                          Space.wSpace15,
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

