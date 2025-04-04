import 'dart:developer';

import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginComponentsWidgets extends StatelessWidget {
  const LoginComponentsWidgets({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            width: ScreenSize.width,
            height: ScreenSize.height * 0.44,
            child: Center(
              child: Text(
                'Access your Care ',
                style: AuthenticationSyles.mainHeadingStyle,
              ),
            ),
          ),
          Space.hSpace20,
          SizedBox(
            width: ScreenSize.width,
            height: ScreenSize.height * 0.5,
            child: Column(
              children: [
                CustomTextFieldWidget(
                  controller: emailController,
                  hintText: 'enter email',
                  leading: Icon(
                    Icons.email_outlined
                  ),
                  trailing: Icon(Icons.done),
                  obscureText: false,
                ),
                Space.hSpace15,
                CustomTextFieldWidget(
                  controller: passwordController,
                  hintText: 'enter password',
                  leading: Icon(
                    Icons.lock_open_outlined,
                  ),
                  trailing: Icon(Icons.remove_red_eye),
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: AuthenticationSyles.forgotPassStyle,
                      ),
                    ),
                  ],
                ),
                    Spacer(),
                CustomSignInButton(
                    buttonText: 'SIGN IN', action: () {
                      context.go('/home');
                    }, isWhiteColor: false),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don,t have an account?',
                      style: AuthenticationSyles.normalText,
                    ),
                    TextButton(
                      onPressed: () {
                         context.go('/register');
                      },
                      child: Text(
                        'Sign up',
                        style:
                            AuthenticationSyles.signupOrRegisterTextButtonStyle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
