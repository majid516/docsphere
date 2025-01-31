import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:flutter/material.dart';

class PendingTagWidget extends StatelessWidget {
  final String amount;
  const PendingTagWidget({
    super.key,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '₹$amount',
          style: TextStyle(
              color: MyColors.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        Space.hSpace5,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
          decoration: BoxDecoration(
            color: MyColors.errorRed.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error,
                color: MyColors.errorRed,
                size: 14,
              ),
              Space.wSpace5,
              Text(
                'failed',
                style: TextStyle(
                  fontSize: 13,
                  color: MyColors.errorRed,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
