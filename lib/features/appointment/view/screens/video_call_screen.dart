import 'dart:developer';
import 'package:docshpere/features/appointment/model/video_call_model.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoCallScreen extends StatelessWidget {
  final VideoCallModel details;
  const VideoCallScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final callId = ('${details.doctorId}${details.userId}');
    log(callId);
    return SizedBox(
      child: ZegoUIKitPrebuiltCall(
        appID: 2143656407,
        appSign:
            '793d1ec649cc485aee07eb90f17b18c3d29a70f9ae6306f55ba55dbc25452792',
        userID: details.userId,
        userName: details.userName,
        callID: callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      ),
    );
  }
}
