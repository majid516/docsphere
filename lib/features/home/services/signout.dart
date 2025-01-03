import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

Future<void> signoutUser()async{
   try {
    await FirebaseAuth.instance.signOut();
    log("successfully signed out");
  } catch (e) {
    log("Error signing out: $e");
    throw Exception('Sign-out failed. Please try again.');
  }
}