import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

Future<void> signInWithGoogle(BuildContext context) async {
  try {
    final emailList = await getAllUsersEmails();
    log(emailList.toString());
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    if (user == null) return;

    final GoogleSignInAuthentication auth = await user.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );
    if (emailList.contains(user.email)) {
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? firebaseUser = userCredential.user;
      showCustomSnackBar(context, 'signIn succuessully', false);
      context.go(MyRoutes.home);
      log("User signed in successfully: ${firebaseUser?.email}");
    } else {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();
      showCustomSnackBar(context, 'account not registerd', true);
      log("User not registered in this app. Access denied.");
    }
  } catch (e) {
    log(" Error during Google Sign-In: $e");
  }
}

Future<List<String>> getAllUsersEmails() async {
  try {
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('user').get();
    List<String> emails = snapshot.docs
        .map((doc) => doc['email'] as String)
        .where((email) => email.isNotEmpty)
        .toList();

    return emails;
  } catch (e) {
    return [];
  }
}
