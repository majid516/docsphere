import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/basic_details_of_pending_list.dart';
import 'package:docshpere/features/appointment/view/widgets/cancel_comfirmation_alert.dart';
import 'package:docshpere/features/appointment/view/widgets/second_part_of_pending_list.dart';
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
        final currentDate = DateFormat("yyyy-MM-dd").parse(booking.slotDate);
        final formatedDate = DateFormat("yyyy-MMM-dd").format(currentDate);

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
                  BasicDetailsOfPendingList(booking: booking),
                  Space.hSpace10,
                  SecondPartOfPendingList(
                      formatedDate: formatedDate, booking: booking),
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
                        String percent = '';
                        if (isMoreThanTwoHours && !isMoreThanOneDay) {
                          percent = '50';
                          refundWarning =
                              "Note: If you cancel after 2 hours of booking, a ₹50 booking charge will be deducted from your refund.";
                        } else if (isMoreThanOneDay) {
                          percent = '10';
                          refundWarning =
                              "Note: If you cancel after 24 hours of booking, a 10% charge will be deducted from your refund.";
                        }

                        showCancelConfirmationDialog(
                            booking.fees,
                            context,
                            bookedDateString,
                            booking.doctorName,
                            booking.slotDate,
                            booking.slotTime,
                            booking.uid,
                            refundWarning.isNotEmpty ? true : false,
                            percent,
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
