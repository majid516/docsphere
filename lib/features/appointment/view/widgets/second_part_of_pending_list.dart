import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:flutter/material.dart';

class SecondPartOfPendingList extends StatelessWidget {
  const SecondPartOfPendingList({
    super.key,
    required this.formatedDate,
    required this.booking,
  });

  final String formatedDate;
  final UpcomingSessionModel booking;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.calendar_today,
                size: 16, color: Colors.grey[600]),
            SizedBox(width: 6),
            Text(
              formatedDate,
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
    );
  }
}
