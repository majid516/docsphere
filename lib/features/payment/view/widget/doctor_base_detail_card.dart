import 'dart:convert';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/payment/view/screen/payment_screen.dart';
import 'package:flutter/material.dart';

class DoctorBaseDetailsCard extends StatelessWidget {
  const DoctorBaseDetailsCard({
    super.key,
    required this.widget,
  });

  final PaymentScreen widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 240, 240, 240),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Doctor Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyColors.primaryColor,
                )),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    MemoryImage(base64Decode(widget.profile)),
              ),
              title: Text("Dr. ${widget.doctorName}",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                      "${widget.category} ",style:  TextStyle(fontSize: 18)),
                
                  Text(
                      "${widget.experience}+ Years Experience",style:  TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

