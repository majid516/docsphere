import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
class ForgotPasswordCubit extends Cubit<Map<String, dynamic>> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  ForgotPasswordCubit() : super({"email": "", "isLoading": false});

  void setEmail(String value) {
    emit({"email": value.trim(), "isLoading": state["isLoading"]});
  }

  Future<void> sendPasswordResetEmail(BuildContext context) async {
    if (state["email"].isEmpty) {
      showCustomSnackBar(context, 'Please enter your email address.',true);
      return;
    }

    emit({"email": state["email"], "isLoading": true});

    try {
      await _auth.sendPasswordResetEmail(email: state["email"]);
      showCustomSnackBar(context, 'Password reset email sent! Check your inbox.',false);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showCustomSnackBar(context, 'No user found for that email address.',true);
      } else {
        showCustomSnackBar(context, 'An error occurred: ${e.message}',true);
      }
    } catch (e) {
      showCustomSnackBar(context, 'An unknown error occurred.',true);
    } finally {
      emit({"email": state["email"], "isLoading": false});
    }
  }


}
