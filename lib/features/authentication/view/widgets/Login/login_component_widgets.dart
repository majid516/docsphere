import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/authentication/services/sigin_user.dart';
import 'package:docshpere/features/authentication/view%20model/cubit/password_toggle.dart';
import 'package:docshpere/features/authentication/view/screens/forgot_password.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';

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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is ErrorState) {
          showCustomSnackBar(context, state.error, true);
        } else if (state is LoadedState) {
          Future.delayed(const Duration(seconds: 1), () {
            context.go(MyRoutes.home);
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.42,
                child: Center(
                  child: Text(
                    'Access your Care',
                    style: AuthenticationSyles.mainHeadingStyle,
                  ),
                ),
              ),
              Space.hSpace20,
              SizedBox(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.53,
                child: Column(
                  children: [
                    CustomTextFieldWidget(
                      controller: emailController,
                      hintText: 'Enter email',
                      errorMessage: 'Please enter your email',
                      leading: const Icon(Icons.email_outlined),
                      trailing: const Icon(Icons.done),
                      obscureText: false,
                    ),
                    Space.hSpace15,
                    BlocBuilder<PasswordToggleCubit, Map<String,bool>>(
                      builder: (context, state) {
                        return CustomTextFieldWidget(
                          controller: passwordController,
                          hintText: 'Password',
                          errorMessage: 'Enter password',
                          leading: const Icon(Icons.lock_open_outlined),
                          trailing: InkWell(
                            onTap: () => context
                                .read<PasswordToggleCubit>()
                                .togglePasswordVisibility(),
                            child: Icon(
                              state["passwordObscure"]!
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          obscureText: state["passwordObscure"]!,
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => ForgotPasswordPage()));
                          },
                          child: Text(
                            'Forgot password?',
                            style: AuthenticationSyles.forgotPassStyle,
                          ),
                        ),
                      ],
                    ),
                    Space.hSpace15,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: MyColors.lightGreyColor,
                              thickness: 1,
                              indent: ScreenSize.width * 0.07,
                              endIndent: 10,
                            ),
                          ),
                          const Text(
                            'or',
                            style: TextStyle(
                                fontSize: 22,
                                color: MyColors.lightGreyColor,
                                fontWeight: FontWeight.w700),
                          ),
                          Expanded(
                            child: Divider(
                              color: MyColors.lightGreyColor,
                              thickness: 1,
                              endIndent: ScreenSize.width * 0.07,
                              indent: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        signInWithGoogle(context);
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.rotate(
                            angle: 90 * pi / 180,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.hexagon_rounded,
                                  size: 75,
                                  color: MyColors.darkGreyColor,
                                ),
                                Icon(
                                  Icons.hexagon_rounded,
                                  size: 72,
                                  color: MyColors.whiteColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: Image.asset(
                                'asset/Drawer icons/google_img.png'),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomSignInButton(
                      buttonText: 'SIGN IN',
                      action: () {
                        if (formKey.currentState!.validate()) {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          context.read<AuthBloc>().add(SignIn(email, password));
                        }
                      },
                      isWhiteColor: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          style: AuthenticationSyles.normalText,
                        ),
                        TextButton(
                          onPressed: () {
                            context.go(MyRoutes.register);
                          },
                          child: Text(
                            'Sign up',
                            style: AuthenticationSyles
                                .signupOrRegisterTextButtonStyle,
                          ),
                        ),
                      ],
                    ),
                    Space.hSpace5,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
