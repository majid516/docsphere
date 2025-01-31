import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<UserModel?> getUser() async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      log('No current user found.');
      return null;
    }

    final user = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser.uid)
        .get();


    final userData = UserModel.fromMap(user.data()!);

    return userData;
  } catch (e) {
    log('Got exception while using getUser(): $e');
  }
  return null;
}
