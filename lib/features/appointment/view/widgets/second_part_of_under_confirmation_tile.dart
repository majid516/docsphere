import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/session_detail_row.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SecondPartOfUnderConfirmationTile extends StatelessWidget {
  const SecondPartOfUnderConfirmationTile({
    super.key,
    required this.session,
  });

  final UpcomingSessionModel session;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailRow(title: "Slot Time", value: session.slotTime),
          Space.hSpace10,
          DetailRow(title: "Slot Date", value: session.slotDate),
          Space.hSpace10,
          DetailRow(title: "Session Type", value: session.type),
          Space.hSpace20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  context.push(MyRoutes.bookingDetailsScreen,
                      extra: session);
                },
                child: Container(
                  width: ScreenSize.width * 0.35,
                  height: 30,
                  decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: MyColors.primaryColor)),
                  child: Center(
                    child: Text(
                      'view detials',
                      style: CommonStyles.commonButtonBlueTextStyle,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<UpcomingSessionBloc>().add(UpcomingSessionEvent.completeConfirmation(session.slotDate, session.slotTime, session.uid));
                },
                child: Container(
                  width: ScreenSize.width * 0.35,
                  height: 30,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Completed',
                      style: CommonStyles.commonButtonWhiteTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
