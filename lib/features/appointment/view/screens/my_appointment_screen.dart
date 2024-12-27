import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view/widgets/cacelled_appointments.dart';
import 'package:docshpere/features/appointment/view/widgets/upcoming_appointment.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.go(MyRoutes.home),
            title: 'My Appointments',
          )),
      backgroundColor: MyColors.whiteColor,
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Space.hSpace10,
            Container(
              width: ScreenSize.width * 0.88,
              height: 40,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: MyColors.lightColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                unselectedLabelColor: MyColors.appGreenColor,
                labelColor: MyColors.whiteColor,
                dividerHeight: 0,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: MyColors.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                tabs: [
                  Tab(
                    text: 'upcoming',
                  ),
                  Tab(
                    text: 'cancelled',
                  )
                ],
              ),
            ),
            Space.hSpace10,
            Expanded(
              child: TabBarView(
                children: [
                  UpcomingAppointments(),
                  CancelledAppointments(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
