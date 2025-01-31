import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view/widgets/cancelled_list_tile_widget.dart';
import 'package:docshpere/features/appointment/view/widgets/scheduled_by_time_container_widget.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CancelledAppointments extends StatelessWidget {
  const CancelledAppointments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: BlocBuilder<UpcomingSessionBloc, UpcomingSessionState>(
        builder: (context, state) {
          return state.maybeWhen(
            bookingDataFetchingLoaded: (booking) {
              final cancelList = booking.where((element) {
                return element.status == 'cancel';
              }).toList();
              if (cancelList.isEmpty) {
                return Center(
                  child: Text(
                    'No Appointment Cancelled',
                    style: AuthenticationSyles.hintTextStyle,
                  ),
                );
              }
              return ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: cancelList.length,
                itemBuilder: (context, index) {
                  final booking = cancelList[index];
                  final currentDate =
                      DateFormat("yyyy-MM-dd").parse(booking.slotDate);
                  final formatedDate =
                      DateFormat("yyyy-MMM-dd").format(currentDate);
                  return Column(
                    children: [
                      CancelledListTileWidget(
                          booking: booking, formatedDate: formatedDate),
                      ScheduledByTimeContainerWidget(booking: booking)
                    ],
                  );
                },
                separatorBuilder: (context, index) => CommonDivider(),
              );
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
    );
  }
}
