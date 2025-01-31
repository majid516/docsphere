import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/settings/view/widgets/are_you_doctor_mailing_widget.dart';
import 'package:docshpere/features/settings/view/widgets/are_you_doctor_reqirement_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AreYouDoctorScreen extends StatelessWidget {
  const AreYouDoctorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Are You Doctor',
          )),
      backgroundColor: MyColors.whiteColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Join the Docsphere Team",
                style: TextStyle(
                  fontSize: 24,
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Space.hSpace15,
            const Center(
              child: Text(
                "Empowering healthcare professionals with advanced hospital management systems.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Space.hSpace20,
            AreYouDoctorReqirementTileWidget(),
            Space.hSpace20,
            const Center(
              child: Text(
                "For further inquiries, please contact the hospital administration team.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Space.hSpace10,
            AreYouDoctorMailingWidget(),
          ],
        ),
      ),
    );
  }
}
