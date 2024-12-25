
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> signInUser(String email, String password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    log("Sign-in successful: ${userCredential.user?.email}");
  } catch (e) {
    log("Sign-in error: $e");
    throw Exception("Sign-in failed. Please try again.");
  }
}
