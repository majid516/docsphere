import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:flutter/material.dart';

class FirstPartOfUnderConfirmationTile extends StatelessWidget {
  const FirstPartOfUnderConfirmationTile({
    super.key,
    required this.session,
  });

  final UpcomingSessionModel session;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
