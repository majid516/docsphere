import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.go(MyRoutes.upcomingSessions),
            title: '',
          )),
      backgroundColor: MyColors.whiteColor,
      body: SizedBox(
        width: ScreenSize.width,
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Space.hSpace10,
            Text(
              'Appointment Details',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: Verified Patient',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Booking Id: 9834834837236',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Consultation Fee: ₹500',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Time: 10:00 AM to 11:00 AM',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Date: 01/02/2025',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Type: Online Cosultation',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Doctor Name: Dr Lauren Hump',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
                Text(
                  'Category: General Physician',
                  style: CommonStyles.appointmentDetailsStyle,
                ),
              ],
            ),
            Container(
              width: ScreenSize.width * 0.85,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyColors.lightColor.withValues(alpha: 0.3),
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'click this link by scheduled time',
                    style: CommonStyles.appointmentDetailsStyle,
                  ),
                  Text(
                    'https://www.google.com/search?sca_esqYA iNwsaFbCyoEima',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: MyColors.primaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
