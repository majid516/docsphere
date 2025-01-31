import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/components/custom_animated_appbar.dart';
import 'package:docshpere/features/home/view/components/drawer.dart';
import 'package:docshpere/features/home/view/widgets/booking_cards_widget.dart';
import 'package:docshpere/features/home/view/widgets/top_reviewed_doctor_card.dart';
import 'package:docshpere/features/home/view_model/top_reiviewed_doctor/top_reviewed_doctor_bloc.dart';
import 'package:docshpere/features/suggestions/view/widgets/suggestion_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<TopReviewedDoctorBloc>()
        .add(TopReviewedDoctorEvent.fetchTopReviewedDoctors());
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
                  SuggestionListWidget(),
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
