import 'dart:developer';
import 'package:docshpere/features/notifications/view/screens/notification_screen.dart';
import 'package:docshpere/routes/routes.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
class NotificationServices {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initializeNotification() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      log('Notification Permission is Denied');
      return;
    }

    final String? fcmToken = await firebaseMessaging.getToken();
    log('FCM Token: $fcmToken');

    FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        _handleMessage(message);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message);
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showNotificationDialog(message);
    });
  }

  void _handleMessage(RemoteMessage message) {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (context) => NotificationScreen(),
        ),
      );
    } else {
      log("Navigator key is not available yet.");
    }
  }

  void _showNotificationDialog(RemoteMessage message) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(message.notification?.title ?? "Notification"),
          content: Text(message.notification?.body ?? "No Message"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _handleMessage(message);
              },
              child: Text("Open"),
            ),
          ],
        ),
      );
    } else {
      log("Context is not ready for dialog.");
    }
  }
}
