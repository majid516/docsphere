import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:flutter/material.dart';



class CancelledAppointments extends StatelessWidget {
  const CancelledAppointments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          isThreeLine: true,
          minVerticalPadding: 0,
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
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General Physician',
                style: CommonStyles.doctorDetailsStyle,
              ),
              Text(
                'Date: 12/01/2025',
                style: CommonStyles.doctorDetailsStyle,
              ),
              RichText(
                text: TextSpan(
                  style: CommonStyles.doctorDetailsStyle,
                  text: 'Type: ',
                  children: [
                    TextSpan(
                        style: TextStyle(
                            fontSize: 20,
                            color: MyColors.appGreenColor,
                            fontWeight: FontWeight.w400),
                        text: 'Offline Consultation')
                  ],
                ),
              ),
              Space.hSpace10,
              Container(
                  alignment: Alignment.center,
                  width: ScreenSize.width * 0.7,
                  height: 28,
                  decoration: BoxDecoration(
                    color: MyColors.lightColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 17,
                          color: MyColors.errorRed,
                          fontWeight: FontWeight.w500),
                      text: 'cancelled by ',
                      children: [
                        TextSpan(
                            style: TextStyle(
                                fontSize: 17,
                                color: MyColors.blackColor,
                                fontWeight: FontWeight.w500),
                            text: '10:00 - 11:00 AM')
                      ],
                    ),
                  ))
            ],
          ),
        ),
        separatorBuilder: (context, index) => CommonDivider(),
      ),
    );
  }
}
