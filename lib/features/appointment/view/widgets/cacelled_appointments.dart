import 'dart:convert';
import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  MemoryImage(base64Decode(booking.profile)),
                            ),
                            Space.wSpace10,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(booking.doctorName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    booking.doctorCategory,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: MyColors.darkGreyColor,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Date ${booking.slotDate}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: MyColors.darkGreyColor,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.orange.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                  Space.wSpace5,
                                  Text(
                                    'Cancelled',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: ScreenSize.width * 0.9,
                          height: 28,
                          decoration: BoxDecoration(
                            color: MyColors.lightColor.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 15,
                                  color: MyColors.appGreenColor,
                                  fontWeight: FontWeight.w500),
                              text: 'Scheduled by ',
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: MyColors.blackColor,
                                        fontWeight: FontWeight.w500),
                                    text: booking.slotTime)
                              ],
                            ),
                          ))
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
