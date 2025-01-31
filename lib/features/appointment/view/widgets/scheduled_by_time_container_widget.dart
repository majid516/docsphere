import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:flutter/material.dart';

class ScheduledByTimeContainerWidget extends StatelessWidget {
  const ScheduledByTimeContainerWidget({
    super.key,
    required this.booking,
  });

  final UpcomingSessionModel booking;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: ScreenSize.width * 0.9,
        height: 28,
        decoration: BoxDecoration(
          color: MyColors.lightColor.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
                fontSize: 15,
                color: MyColors.appGreenColor,
                fontWeight: FontWeight.w500),
            text: 'Scheduled by ',
            children: [
              TextSpan(
                  style: TextStyle(
                      fontSize: 15,
                      color: MyColors.blackColor,
                      fontWeight: FontWeight.w500),
                  text: booking.slotTime)
            ],
          ),
        ));
  }
}
