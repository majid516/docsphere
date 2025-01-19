import 'dart:developer';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initializeNotification() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.denied) {
      log('Notification Permission is Denied');
      return;
    }

    final String? fcmToken = await firebaseMessaging.getToken();
  //  log('FCM Token: $fcmToken');
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      log('No user is currently logged in.');
      return;
    }
    if (Platform.isIOS) {
      String? apnsToken = await firebaseMessaging.getAPNSToken();
      if (apnsToken == null) {
        log('APNS Token is NULL. Waiting and retrying...');
        await Future.delayed(const Duration(seconds: 3));
        apnsToken = await firebaseMessaging.getAPNSToken();
      }

      if (apnsToken != null) {
    //    log('APNS Token: $apnsToken');
        await firebaseMessaging.subscribeToTopic(currentUser.uid);
      } else {
        log('Failed to get APNS Token.');
      }

      firebaseMessaging.onTokenRefresh.listen((newToken) async {
   //     log('New APNS Token Received: $newToken');
        await firebaseMessaging.subscribeToTopic(currentUser.uid);
      });
    } else {
      await firebaseMessaging.subscribeToTopic(currentUser.uid);
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Foreground Message Received: ${message.notification?.title}');
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('Notification Clicked: ${message.notification?.title}');
    });
  }
}
