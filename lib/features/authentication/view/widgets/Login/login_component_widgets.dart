import 'dart:developer';

import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginComponentsWidgets extends StatelessWidget {
   LoginComponentsWidgets({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: formKey,
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
                    errorMessage: 'enter email',
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
                    errorMessage: 'enter passoword',
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
                        if (formKey.currentState!.validate()) {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          context.read<AuthBloc>().add(SignIn(email, password));
                           //context.go('/home');
                        }
                       
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
      ),
    );
  }
}
