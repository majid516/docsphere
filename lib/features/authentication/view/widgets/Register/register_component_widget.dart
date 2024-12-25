import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view%20model/bloc/auth/auth_bloc.dart';
import 'package:docshpere/features/authentication/view%20model/provider/password_toggle.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:docshpere/features/authentication/view/components/custom_text_form_field.dart';
import 'package:docshpere/routes/routes_name.dart';
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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is ErrorState) {
          // Show snackbar on error
          showCustomSnackBar(context, state.error, true);
        } else if (state is LoadedState) {
          // Navigate to the sign-in page after successful registration
          context.go(MyRoutes.signIn);
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
                      leading: Icon(Icons.person_outline),
                      trailing: Icon(Icons.done),
                      obscureText: false,
                    ),
                    Space.hSpace15,
                    CustomTextFieldWidget(
                      controller: emailController,
                      hintText: 'email',
                      errorMessage: 'enter Email',
                      leading: Icon(Icons.email_outlined),
                      trailing: Icon(Icons.done),
                      obscureText: false,
                    ),
                    Space.hSpace15,
                    CustomTextFieldWidget(
                      controller: passwordController,
                      hintText: 'password',
                      errorMessage: 'enter password',
                      leading: Icon(Icons.lock_open_outlined),
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
                    Space.hSpace15,
                    CustomTextFieldWidget(
                      controller: confirmPassController,
                      hintText: 'confirm password',
                      errorMessage: 'Passwords do not match',
                      leading: Icon(Icons.lock_open_outlined),
                      trailing: InkWell(
                        onTap: () => context
                            .read<PasswordToggle>()
                            .changeConfirmPasswordObsucre(),
                        child: Icon(
                          context.watch<PasswordToggle>().confirmPasswordObscure
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      obscureText: context
                          .watch<PasswordToggle>()
                          .confirmPasswordObscure,
                      validator: (value) {
                        if (value != passwordController.text.trim()) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    Spacer(),
                    CustomSignInButton(
                      buttonText: 'SIGN UP',
                      action: () {
                        if (formKey.currentState!.validate()) {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();
                          final name = nameController.text.trim();
                          context
                              .read<AuthBloc>()
                              .add(SignUp(email, password, name));
                        } else {
                          showCustomSnackBar(
                              context, 'Enter all valid data', true);
                        }
                      },
                      isWhiteColor: false,
                    ),
                    Space.hSpace5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: AuthenticationSyles.normalText,
                        ),
                        TextButton(
                          onPressed: () {
                            context.go(MyRoutes.signIn);
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
      ),
    );
  }
}
