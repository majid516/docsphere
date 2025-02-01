import 'dart:developer';

import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/notifications/services/notification_firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  final String userId = FirebaseAuth.instance.currentUser!.uid;

  @override
  void initState() {
    super.initState();
    _requestNotificationPermission();
    NotificationFirebaseServices().setupFCMListener();
  }

  void _requestNotificationPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log("✅ Notification permission granted.");
    } else {
      log("❌ Notification permission denied.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Notifications',
          )),
      backgroundColor: MyColors.whiteColor,
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: NotificationFirebaseServices().getUserNotifications(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            log(snapshot.error.toString());
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No notifications yet!"));
          }

          var notifications = snapshot.data!;
          return ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              var notification = notifications[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Text(notification['title']),
                  subtitle: Text(notification['message']),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => NotificationFirebaseServices()
                        .deleteNotification(notification['notificationId']),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
