import 'package:docshpere/features/authentication/view%20model/provider/password_toggle.dart';
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
                height: ScreenSize.height * 0.44,
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
                height: ScreenSize.height * 0.5,
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
                    CustomTextFieldWidget(
                      controller: passwordController,
                      hintText: 'Password',
                      errorMessage: 'Enter password',
                      leading: const Icon(Icons.lock_open_outlined),
                      trailing: InkWell(
                        onTap: () => context
                            .read<PasswordToggle>()
                            .changePasswordObscure(),
                        child: Icon(
                          context.watch<PasswordToggle>().passwordObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      obscureText:
                          context.watch<PasswordToggle>().passwordObscure,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (ctx) => ForgotPasswordPage()));
                          },
                          child: Text(
                            'Forgot password?',
                            style: AuthenticationSyles.forgotPassStyle,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
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
                            style: AuthenticationSyles.signupOrRegisterTextButtonStyle,
                          ),
                        ),
                      ],
                    ),
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
