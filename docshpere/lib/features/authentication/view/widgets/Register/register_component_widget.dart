import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterComponentsWidgets extends StatelessWidget {
  const RegisterComponentsWidgets({
    super.key,
    required this.nameController,
    required this.passwordController, required this.emailController, required this.confirmPassController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController confirmPassController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
          Space.hSpace5,
          SizedBox(
            width: ScreenSize.width,
            height: ScreenSize.height * 0.53,
            child: Column(
              children: [
                CustomTextFieldWidget(
                  controller: nameController,
                  hintText: 'fullname',
                  leading: Icon(
                    Icons.person_outline,
                  ),
                  trailing: Icon(Icons.done),
                  obscureText: false,
                ),
                Space.hSpace15,
                CustomTextFieldWidget(
                  controller: emailController,
                  hintText: 'email',
                  leading: Icon(
                    Icons.email_outlined,
                  ),
                  trailing: Icon(Icons.done),
                  obscureText: true,
                ),
                Space.hSpace15,
                CustomTextFieldWidget(
                  controller: passwordController,
                  hintText: 'password',
                  leading: Icon(
                    Icons.lock_open_outlined,
                  ),
                  trailing: Icon(Icons.remove_red_eye),
                  obscureText: true,
                ),
                Space.hSpace15,
                CustomTextFieldWidget(
                  controller: confirmPassController,
                  hintText: 'confirm password',
                  leading: Icon(
                    Icons.lock_open_outlined,
                  ),
                  trailing: Icon(Icons.remove_red_eye),
                  obscureText: true,
                ),
               
                Space.hSpace40,
                CustomSignInButton(
                    buttonText: 'SIGN IN', action: () {}, isWhiteColor: false),
                Space.hSpace5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don,t have an account?',
                      style: AuthenticationSyles.normalText,
                    ),
                    TextButton(
                      onPressed: () {},
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
