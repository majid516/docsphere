import 'dart:developer';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view/widgets/compined_upcoming_list_widget.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class UpcomingSessionsScreen extends StatelessWidget {
  final String userName;
  const UpcomingSessionsScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    context
        .read<UpcomingSessionBloc>()
        .add(UpcomingSessionEvent.fetchAllUpcomingSessions());
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Upcoming Sessions',
          )),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: BlocBuilder<UpcomingSessionBloc, UpcomingSessionState>(
          builder: (context, state) {
            return state.maybeWhen(
              bookingDataFetchingLoaded: (bookings) {
                final activeList = bookings.where((element) {
                  return element.status == 'Active';
                }).toList();
                final DateFormat dateFormat = DateFormat("yyyy-MM-dd hh:mm a");

                activeList.sort((a, b) {
                  return dateFormat
                      .parse("${a.slotDate} ${a.slotTime}")
                      .compareTo(
                          dateFormat.parse("${b.slotDate} ${b.slotTime}"));
                });
                final underComfirmationList = bookings.where((element) {
                  return element.status == 'confirmation';
                }).toList();
                underComfirmationList.sort((a, b) {
                  return dateFormat
                      .parse("${a.slotDate} ${a.slotTime}")
                      .compareTo(
                          dateFormat.parse("${b.slotDate} ${b.slotTime}"));
                });
                log(underComfirmationList.length.toString());
                if (activeList.isEmpty && underComfirmationList.isEmpty) {
                  return Center(
                    child: Text(
                      'No Sessions',
                      style: AuthenticationSyles.hintTextStyle,
                    ),
                  );
                }
                return CompinedUpcomingListWidget(
                    underComfirmationList: underComfirmationList,
                    activeList: activeList);
              },
              loadingState: () {
                return ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: ScreenSize.width,
                      height: 120,
                      color: MyColors.lightColor.withValues(alpha: 0.3),
                    ),
                  ),
                  itemCount: 5,
                );
              },
              errorState: (message) {
                return GeneralErrorScreen();
              },
              orElse: () {
                return SomethingWentWrongScreen();
              },
            );
          },
        ),
      ),
    );
  }
}
