import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/model/video_call_model.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class JoinVideoCallOption extends StatelessWidget {
  const JoinVideoCallOption({
    super.key,
    required this.session,
  });

  final UpcomingSessionModel session;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final userId = FirebaseAuth.instance.currentUser!.uid;
        final data = VideoCallModel(
          userName: session.patientName,
          userId: userId,
          doctorId: session.uid,
        );
        context.push(MyRoutes.videoCallScreen, extra: data);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: MyColors.whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: MyColors.primaryColor, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Join Online Session",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Tap to start your video consultation",
                  style: TextStyle(
                    color: MyColors.primaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.videocam_rounded,
                  color: Colors.white, size: 28),
            ),
          ],
        ),
      ),
    );
  }
}
