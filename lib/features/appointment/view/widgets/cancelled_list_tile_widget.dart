import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/cancelled_tag_widget.dart';
import 'package:flutter/material.dart';

class CancelledListTileWidget extends StatelessWidget {
  const CancelledListTileWidget({
    super.key,
    required this.booking,
    required this.formatedDate,
  });

  final UpcomingSessionModel booking;
  final String formatedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: MemoryImage(base64Decode(booking.profile)),
          ),
          Space.wSpace10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  booking.doctorName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  booking.doctorCategory,
                  style: TextStyle(
                    fontSize: 15,
                    color: MyColors.darkGreyColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Date $formatedDate",
                  style: TextStyle(
                    fontSize: 15,
                    color: MyColors.darkGreyColor,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          CancelledTagWidget(),
        ],
      ),
    );
  }
}
