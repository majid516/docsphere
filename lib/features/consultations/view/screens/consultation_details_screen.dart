import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/consultations/model/consultation_model.dart';
import 'package:docshpere/features/consultations/view/widgets/consultation_details_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConsultationDetailsScreen extends StatelessWidget {
  final ConsultationModel session;

  const ConsultationDetailsScreen({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Appointments Details',
          )),
          backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: MyColors.whiteColor,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Appointment Summary",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    ConsultationDetailsRow(
                        title: "Patient Name",
                        value:session.patientName),
                    ConsultationDetailsRow(
                        title: "Booking ID", value: session.bookingId),
                    ConsultationDetailsRow(
                        title: "Consultation Fee",
                        value: "₹${session.fees}"),
                    ConsultationDetailsRow(
                        title: "Scheduled Date", value: session.slotDate),
                    ConsultationDetailsRow(
                        title: "Scheduled Time", value:session.slotTime),
                    ConsultationDetailsRow(
                        title: "Consultation Type", value: session.type),
                    ConsultationDetailsRow(
                        title: "Doctor Name", value: session.doctorName),
                    ConsultationDetailsRow(
                        title: "Department", value: session.doctorCategory),
                    ConsultationDetailsRow(
                        title: "Booked By", value: session.bookedDate),
                    if (session.type == 'Online')
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.video_call, color: Colors.blue.shade700),
                              const SizedBox(width: 8),
                              Text(
                                "Join Video Call",
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Space.hSpace20
                      
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
