import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/detail_row.dart';
import 'package:docshpere/features/appointment/view/widgets/doctor_info_card.dart';
import 'package:docshpere/features/appointment/view/widgets/join_video_call_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class BookingDetailsScreen extends StatelessWidget {
  final UpcomingSessionModel session;

  const BookingDetailsScreen({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    DateTime? getSessionDateTime(String slotDate, String slotTime) {
      try {
        DateFormat inputFormat = DateFormat("yyyy-MM-dd hh:mm a");
        String dateTimeString = '$slotDate $slotTime';

        return inputFormat.parse(dateTimeString);
      } catch (e) {
        return null;
      }
    }

    DateTime? sessionDateTime =
        getSessionDateTime(session.slotDate, session.slotTime.split(' to ')[0]);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          action: () => context.pop(),
          title: 'Appointment Details',
        ),
      ),
      backgroundColor: MyColors.whiteColor.withValues(alpha: 0.9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            DoctorInfoCard(session: session),
            Card(
              color: MyColors.whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment Summary',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    DetailRow(
                        title: "Patient Name", value: session.patientName),
                    DetailRow(title: "Booking ID", value: session.bookingId),
                    DetailRow(
                        title: "Consultation Fee", value: "₹${session.fees}"),
                    DetailRow(title: "Scheduled Date", value: session.slotDate),
                    DetailRow(title: "Scheduled Time", value: session.slotTime),
                    DetailRow(title: "Consultation Type", value: session.type),
                    DetailRow(title: "Booked On", value: session.bookedDate),
                  ],
                ),
              ),
            ),
            if (session.type == 'Online' &&
                sessionDateTime != null &&
                sessionDateTime.toString().split(':').first ==
                    DateTime.now()
                        .toString()
                        .split(':')
                        .first && 
                session.status != 'completed')
              JoinVideoCallOption(session: session),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
