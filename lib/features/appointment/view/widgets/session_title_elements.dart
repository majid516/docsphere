import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/view/widgets/session_detail_row.dart';
import 'package:docshpere/features/appointment/view/widgets/upcoming_session_tile.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SessionTitleElements extends StatelessWidget {
  const SessionTitleElements({
    super.key,
    required this.widget,
  });

  final SessionTile widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailRow(title: "Slot Time", value: widget.session.slotTime),
          Space.hSpace10,
          DetailRow(title: "Slot Date", value: widget.session.slotDate),
          Space.hSpace10,
          DetailRow(title: "Session Type", value: widget.session.type),
          Space.hSpace20,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  context.push(MyRoutes.bookingDetailsScreen,extra: widget.session);
                },
                child: Container(
                  width: ScreenSize.width * 0.35,
                  height: 30,
                  decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: MyColors.primaryColor.withValues(alpha: 0.3))),
                  child: Center(
                    child: Text(
                      'view detials',
                      style: CommonStyles.commonButtonBlueTextStyle,
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
