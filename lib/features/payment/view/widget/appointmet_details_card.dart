import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/payment/view/screen/payment_screen.dart';
import 'package:flutter/material.dart';

class AppointmentDetailsCard extends StatelessWidget {
  const AppointmentDetailsCard({
    super.key,
    required this.widget,
    required this.slot,
  });

  final PaymentScreen widget;
  final String slot;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 240, 240, 240),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Appointment Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor,
                )),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.calendar_today,
                color: MyColors.primaryColor,
              ),
              title: Text("Date: ${widget.slotDate}",
                  style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              leading: const Icon(
                Icons.access_time,
                color: MyColors.primaryColor,
              ),
              title: Text("Time: ${widget.slotTime}",
                  style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              leading: const Icon(
                Icons.event,
                color: MyColors.primaryColor,
              ),
              title:
                  Text("Slot: $slot", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
