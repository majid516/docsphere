import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/session_detail_row.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class SessionTile extends StatefulWidget {
  final UpcomingSessionModel session;

  const SessionTile({super.key, required this.session});

  @override
  
  State<SessionTile> createState() => _SessionTileState();
}

class _SessionTileState extends State<SessionTile> {
  late DateTime sessionTime;
  Duration remainingTime = Duration();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _initializeSessionTime();
    _startTimer();
  }

  void _initializeSessionTime() {
    final String slotDate = widget.session.slotDate;
    final String slotTime = widget.session.slotTime.split('-')[0].trim();
    final DateFormat dateFormat = DateFormat("yyyy-MM-dd hh:mm a");

    sessionTime = dateFormat.parse("$slotDate $slotTime");
    remainingTime = sessionTime.difference(DateTime.now());
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        remainingTime = sessionTime.difference(DateTime.now());
        if (remainingTime.isNegative) {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLessThanOneHour =
        remainingTime.inMinutes <= 60 && remainingTime.inHours < 1;
    bool isMoreThanOneDay = remainingTime.inHours >= 24;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: isLessThanOneHour ? MyColors.appGreenColor : MyColors.whiteColor),
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
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.alarm, size: 23),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.session.patientName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                _formatRemainingTime(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isMoreThanOneDay ? MyColors.appGreenColor : MyColors.primaryColor,
                ),
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
          ),
        ],
      ),
    );
  }

  String _formatRemainingTime() {
    if (remainingTime.isNegative) {
      return "Session\nStarted";
    }
    if (remainingTime.inHours >= 24) {
      return "${remainingTime.inDays} day${remainingTime.inDays > 1 ? 's' : ''} left";
    }
    final int hours = remainingTime.inHours;
    final int minutes = remainingTime.inMinutes.remainder(60);
    final int seconds = remainingTime.inSeconds.remainder(60);
    return "$hours h $minutes m $seconds s";
  }
}
