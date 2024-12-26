import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

Future<void> registerUser(String name, String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    String uid = userCredential.user!.uid;

    await FirebaseFirestore.instance.collection('user').doc(uid).set({
      'uid': uid,
      'name': name,
      'email': email,
      'role': 'user',
      'profileImage': '',
      'medicalRecords': [],
      'appointments': [],
      'notifications': [],
      'createdAt' : DateFormat.yMd().add_jm().format(DateTime.now()),
    }).then((_) {
      log("Firestore document created successfully!");
    }).catchError((error) {
      log("Error creating Firestore document: $error");
    });
  } catch (e) {
    log("Error registering user: $e");
  }
}

