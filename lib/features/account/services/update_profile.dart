import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> updateUser(UserModel user)async{
 try {
    final currUser = FirebaseAuth.instance.currentUser;
  await FirebaseFirestore.instance
        .collection('user')
        .doc(currUser!.uid)
        .set(user.toMap())
        .then((_) {
      log("Firestore document created successfully!");
    }).catchError((error) {
      log("Error creating Firestore document: $error");
    });
 } catch (e) {
   log(e.toString());
 }
}