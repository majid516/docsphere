import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationFirebaseServices {
  final String userId = FirebaseAuth.instance.currentUser!.uid;
  Future<void> saveNotificationToFirestore(
      RemoteNotification notification) async {
    try {
      String notificationId = notification.hashCode.toString();

      var querySnapshot = await FirebaseFirestore.instance
          .collection('notifications')
          .where('notificationId', isEqualTo: notificationId)
          .get();

      if (querySnapshot.docs.isEmpty) {
        DocumentReference docRef =
            FirebaseFirestore.instance.collection('notifications').doc();

        await docRef.set({
          'notificationId': notificationId,
          'userId': userId,
          'title': notification.title ?? "No Title",
          'message': notification.body ?? "No Message",
          'timestamp': FieldValue.serverTimestamp(),
        });

        log("✅ Notification saved to Firestore!");
      } else {
        log("❌ Notification already exists in Firestore.");
      }
    } catch (e) {
      log("❌ Error saving notification: $e");
    }
  }

  void setupFCMListener() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        saveNotificationToFirestore(message.notification!);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.notification != null) {
        saveNotificationToFirestore(message.notification!);
      }
    });
  }

  Stream<List<Map<String, dynamic>>> getUserNotifications() {
    return FirebaseFirestore.instance
        .collection('notifications')
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((snapshot) {
      if (snapshot.docs.isEmpty) {
        log("No notifications available!");
      }
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  Future<void> deleteNotification(String notificationId) async {
    try {
      await FirebaseFirestore.instance
          .collection('notifications')
          .doc(notificationId)
          .delete();
    } catch (e) {
      log(" Error deleting notification: $e");
    }
  }
}
