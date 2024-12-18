
import 'package:docshpere/features/home/view/widgets/top_doctor_background_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_reviewed_doctor_details.dart';
import 'package:flutter/material.dart';

class TopReviewedDoctorCard extends StatelessWidget {
  const TopReviewedDoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TopDoctorBackgroundwidget(),
        TopReviewedDoctorDetailsWidget()
      ],
    );
  }
}

