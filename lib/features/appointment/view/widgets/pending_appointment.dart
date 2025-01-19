import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view/widgets/pending_session_list.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingAppointment extends StatelessWidget {
  const PendingAppointment({
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
              final pendingList = booking.where((element) {
                return element.status == 'Active';
              }).toList();
              if (pendingList.isEmpty) {
                return Center(
                  child: Text(
                    'No Appointment Pending',
                    style: AuthenticationSyles.hintTextStyle,
                  ),
                );
              }
              return PendingSessionsList(pendingList: pendingList);
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

