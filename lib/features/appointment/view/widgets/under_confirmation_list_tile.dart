import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/first_part_of_under_confirmation_tile.dart';
import 'package:docshpere/features/appointment/view/widgets/second_part_of_under_confirmation_tile.dart';
import 'package:flutter/material.dart';

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
        title: FirstPartOfUnderConfirmationTile(session: session),
        children: [
          SecondPartOfUnderConfirmationTile(session: session),
        ],
      ),
    );
  }
}
