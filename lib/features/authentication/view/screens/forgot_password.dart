import 'package:docshpere/features/authentication/view%20model/cubit/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: HomeScreenStyles.normalText1,
        ),
        backgroundColor: MyColors.primaryColor,
        iconTheme: IconThemeData(color: MyColors.whiteColor),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.lock_reset, size: 100, color: MyColors.primaryColor),
            SizedBox(height: 20),
            Text(
              'Forgot Your Password?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            Space.hSpace20,
            Text(
              'Enter your email address below to receive a password reset link.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[700]),
            ),
            Space.hSpace30,
            BlocBuilder<ForgotPasswordCubit, Map<String, dynamic>>(
              builder: (context, state) {
                return TextField(
                  onChanged: (value) =>
                      context.read<ForgotPasswordCubit>().setEmail(value),
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email, color: MyColors.primaryColor),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.primaryColor),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 330),
            BlocBuilder<ForgotPasswordCubit, Map<String, dynamic>>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state["isLoading"]
                      ? null
                      : () => context
                          .read<ForgotPasswordCubit>()
                          .sendPasswordResetEmail(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: state["isLoading"]
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                          'Send Reset Link',
                          style: CommonStyles.commonButtonWhiteTextStyle,
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
