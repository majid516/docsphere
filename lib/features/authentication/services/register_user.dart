import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/authentication/model/user_model.dart';
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
    final userRegisterModel = RegisterUserModel(
      uid: uid,
      name: name,
      email: email,
      role: 'user',
      profileImage: '',
      contactNumber: '',
      dob: '',
      bloodGroup: '',
      gender: '',
      medicalRecords: [],
      appointments: [],
      notifications: [],
      createdAt: DateFormat.yMMMd().format(DateTime.now()),
    );
    final userData = userRegisterModel.toMap();
    await FirebaseFirestore.instance
        .collection('user')
        .doc(uid)
        .set(userData)
        .then((_) {
      log("Firestore document created successfully!");
    }).catchError((error) {
      log("Error creating Firestore document: $error");
    });
  } catch (e) {
    log("Error registering user: $e");
  }
}
