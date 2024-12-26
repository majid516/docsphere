import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/components/custom_animated_appbar.dart';
import 'package:docshpere/features/home/view/components/doctor_full_basic_details_widget.dart';
import 'package:docshpere/features/home/view/components/drawer.dart';
import 'package:docshpere/features/home/view/widgets/booking_cards_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_reviewed_doctor_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
        body: CustomScrollView(
          slivers: [
            CustomAnimatedAppbar(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Space.hSpace15,
                  BookingCardsWidget(),
                  TopReviewedDoctorCard(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'Suggestion for you',
                      style: HomeScreenStyles.mediumText,
                    ),
                  ),
                  DoctorFullBasicDetailsWidget(),
                  SizedBox(
                    width: ScreenSize.width,
                    height: ScreenSize.height * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: DrawerWidget());
  }
}

