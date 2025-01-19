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

class UnderConfirmationListTile extends StatelessWidget {
  final UpcomingSessionModel session;

  const UnderConfirmationListTile({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ExpansionTile(
        showTrailingIcon: false,
        tilePadding: EdgeInsets.all(4),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: MyColors.primaryColor,
                          size: 18,
                        ),
                        Space.wSpace5,
                        Text(
                          'under confirmation. give your response',
                          style: TextStyle(
                            fontSize: 14,
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Space.hSpace10,
              Row(
                children: [
                  Space.wSpace20,
                  Icon(Icons.verified_outlined, size: 23),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      session.doctorName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        children: [
          Padding(
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
          ),
        ],
      ),
    );
  }
}
