import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:flutter/material.dart';

class AreYouDoctorReqirementTileWidget extends StatelessWidget {
  const AreYouDoctorReqirementTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: MyColors.primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Requirements to Join Docsphere:",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Space.hSpace15,
          Text(
            "1. You must be a registered member of the Docsphere hospital. Being a member ensures alignment with our hospital's standards and processes.",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Space.hSpace15,
          Text(
            "2. Valid medical credentials are required, verified and approved by the hospital administration team to maintain the integrity of our services.",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Space.hSpace15,
          Text(
            "3. Adherence to the highest ethical standards and commitment to patient care is a cornerstone of being a Docsphere doctor.",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Space.hSpace15,
          Text(
            "4. Active participation in training and development programs organized by the Docsphere hospital to stay updated with the latest medical advancements.",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Space.hSpace15,
          Text(
            "5. Be a proactive contributor to improving patient care and hospital workflows, embracing innovation and collaboration.",
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
          Space.hSpace20,
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primaryColor,
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Register as a Doctor",
                style:
                    TextStyle(fontSize: 18, color: MyColors.whiteColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
