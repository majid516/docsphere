import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class CancellationAlertComponents extends StatelessWidget {
  final String fees;
  final BuildContext context;
  final String bookedAt;
  final String doctor;
  final String date;
  final String time;
  final String doctorUid;
  final bool refundAllow;
  final String percent;
  final String refundWarning;
  const CancellationAlertComponents({
    super.key,
    required this.fees,
    required this.context,
    required this.bookedAt,
    required this.doctor,
    required this.date,
    required this.time,
    required this.doctorUid,
    required this.refundAllow,
    required this.percent,
    required this.refundWarning,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Doctor: $doctor",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColors.darkGreyColor,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Date: $date",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColors.darkGreyColor,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Time: $time",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColors.darkGreyColor,
          ),
        ),
        SizedBox(height: 6),
        Text(
          "Booked At: $bookedAt",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColors.darkGreyColor,
          ),
        ),
        SizedBox(height: 12),
        if (refundAllow)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              refundWarning,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColors.errorRed,
              ),
            ),
          ),
        Text(
          "Are you sure you want to cancel this appointment?",
          style: TextStyle(
            fontSize: 15,
            color: MyColors.blackColor,
          ),
        ),
      ],
    );
  }
}
