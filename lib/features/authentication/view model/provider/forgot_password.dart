import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email = '';
  bool isLoading = false;

  void setEmail(String value) {
    email = value.trim();
    notifyListeners();
  }

  Future<void> sendPasswordResetEmail(BuildContext context) async {
    if (email.isEmpty) {
      _showSnackbar(context, 'Please enter your email address.');
      return;
    }

    isLoading = true;
    notifyListeners();

    try {
      await _auth.sendPasswordResetEmail(email: email);
      _showSnackbar(context, 'Password reset email sent! Check your inbox.');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        _showSnackbar(context, 'No user found for that email address.');
      } else {
        _showSnackbar(context, 'An error occurred: ${e.message}');
      }
    } catch (e) {
      _showSnackbar(context, 'An unknown error occurred.');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}
