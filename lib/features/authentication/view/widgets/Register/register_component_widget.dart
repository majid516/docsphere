import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterComponentsWidgets extends StatelessWidget {
  RegisterComponentsWidgets({
    super.key,
    required this.nameController,
    required this.passwordController,
    required this.emailController,
    required this.confirmPassController,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController confirmPassController;
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
              height: ScreenSize.height * 0.43,
              child: Center(
                child: Text(
                  'Access your Care ',
                  style: AuthenticationSyles.mainHeadingStyle,
                ),
              ),
            ),
            SizedBox(
              width: ScreenSize.width,
              height: ScreenSize.height * 0.53,
              child: Column(
                children: [
                  CustomTextFieldWidget(
                    controller: nameController,
                    hintText: 'fullname',
                    errorMessage: 'enter fullname',
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
                    errorMessage: 'enter Email',
                    leading: Icon(
                      Icons.email_outlined,
                    ),
                    trailing: Icon(Icons.done),
                    obscureText: false,
                  ),
                  Space.hSpace15,
                  CustomTextFieldWidget(
                    controller: passwordController,
                    hintText: 'password',
                    errorMessage: 'enter password',
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
                    errorMessage: 'enter confirm password',
                    leading: Icon(
                      Icons.lock_open_outlined,
                    ),
                    trailing: Icon(Icons.remove_red_eye),
                    obscureText: true,
                  ),
                  Spacer(),
                  CustomSignInButton(
                      buttonText: 'SIGN UP',
                      action: () {
                        if (formKey.currentState!.validate()) {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          final name = nameController.text.trim();
                        context.read<AuthBloc>().add(SignUp(email, password,name));
                       //   context.go('/login');
                        }
                      },
                      isWhiteColor: false),
                  Space.hSpace5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don,t have an account?',
                        style: AuthenticationSyles.normalText,
                      ),
                      TextButton(
                        onPressed: () {
                          context.go('/login');
                        },
                        child: Text(
                          'Sign In',
                          style: AuthenticationSyles
                              .signupOrRegisterTextButtonStyle,
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
