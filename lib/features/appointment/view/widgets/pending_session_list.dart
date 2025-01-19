import 'dart:convert';
import 'dart:developer';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/cancel_comfirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PendingSessionsList extends StatelessWidget {
  const PendingSessionsList({
    super.key,
    required this.pendingList,
  });

  final List<UpcomingSessionModel> pendingList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: pendingList.length,
      itemBuilder: (context, index) {
        final booking = pendingList[index];
        return Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: MyColors.lightGreyColor.withValues(alpha: 0.5)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            MemoryImage(base64Decode(booking.profile)),
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
                              " ${booking.doctorCategory}",
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
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.green.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            ),
                            Space.wSpace5,
                            Text(
                              'Active',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Space.hSpace10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              size: 16, color: Colors.grey[600]),
                          SizedBox(width: 6),
                          Text(
                            booking.slotDate,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              size: 16, color: Colors.grey[600]),
                          SizedBox(width: 6),
                          Text(
                            booking.slotTime,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Space.hSpace10,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        String bookedDateString = booking.bookedDate;
                        DateTime now = DateTime.now();

                        DateTime bookedDate = DateFormat("yyyy-MM-dd HH:mm")
                            .parse(bookedDateString);
                        bool isMoreThanTwoHours =
                            now.difference(bookedDate).inHours > 2;
                        bool isMoreThanOneDay =
                            now.difference(bookedDate).inHours > 24;
                        String refundWarning = '';
                        if (isMoreThanTwoHours && !isMoreThanOneDay) {
                          refundWarning =
                              "Note: If you cancel after 2 hours of booking, a ₹50 booking charge will be deducted from your refund.";
                        } else if (isMoreThanOneDay) {
                          refundWarning =
                              "Note: If you cancel after 24 hours of booking, a 10% charge will be deducted from your refund.";
                        }

                        showCancelConfirmationDialog(
                            context,
                            booking.doctorName,
                            booking.slotDate,
                            booking.slotTime,
                            booking.uid,
                            refundWarning.isNotEmpty ? true : false,
                            refundWarning);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: MyColors.errorRed,
                      ),
                      child: Text("Cancel Appointment"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
