import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/view/widgets/under_confirmation_list_tile.dart';
import 'package:docshpere/features/appointment/view/widgets/upcoming_session_tile.dart';
import 'package:flutter/material.dart';

class CompinedUpcomingListWidget extends StatelessWidget {
  const CompinedUpcomingListWidget({
    super.key,
    required this.underComfirmationList,
    required this.activeList,
  });

  final List<UpcomingSessionModel> underComfirmationList;
  final List<UpcomingSessionModel> activeList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal:  8.0),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: underComfirmationList.length,
              itemBuilder: (context, index) {
                final booking = underComfirmationList[index];
                return UnderConfirmationListTile(session: booking);
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal:  8.0),
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: activeList.length,
              itemBuilder: (context, index) {
                final booking = activeList[index];
                return SessionTile(session: booking);
              },
            ),
          ),
        ],
      ),
    );
  }
}
