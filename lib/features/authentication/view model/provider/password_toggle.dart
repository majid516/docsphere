import 'package:flutter/material.dart';

class PasswordToggle with ChangeNotifier{
  bool passwordObscure = true;
  bool confirmPasswordObscure = true;

  void changePasswordObscure(){
    passwordObscure = !passwordObscure;
    notifyListeners();
  }
  void changeConfirmPasswordObsucre(){
    confirmPasswordObscure = !confirmPasswordObscure;
    notifyListeners();
  }


  }