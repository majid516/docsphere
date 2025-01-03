import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class NoSlotAvailableWidget extends StatelessWidget {
  const NoSlotAvailableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.width * 0.5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Space.hSpace10,
            Text(
              'No time slots available for the\nselected date.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
