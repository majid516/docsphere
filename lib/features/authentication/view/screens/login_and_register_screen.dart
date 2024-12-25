import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view/components/backgound_stack_widget.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginAndRegisterScreen extends StatelessWidget {
  const LoginAndRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroudStackWidget(),
          Column(
            children: [
              SizedBox(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.36,
                child: Center(
                  child: Text(
                    'Access your Care ',
                    style: AuthenticationSyles.mainHeadingStyle,
                  ),
                ),
              ),
              SizedBox(
                width: ScreenSize.width,
                height: ScreenSize.height * 0.64,
                child: Column(
                  spacing: 20,
                  children: [
                    SizedBox(
                      width: ScreenSize.width * 0.5,
                      height: ScreenSize.width * 0.5,
                      child: Image.asset('asset/images/doctor_avatar.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Welcome! Please log in or register to schedule your appointment with our doctors and manage your health easily',
                        style: AuthenticationSyles.normalText2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Space.hSpace30,
                    CustomSignInButton(
                        buttonText: 'SIGN IN',
                        action: () {
                          context.go('/login');
                        },
                        isWhiteColor: true),
                    CustomSignInButton(
                        buttonText: 'SIGN UP',
                        action: () {
                          context.go('/register');
                        },
                        isWhiteColor: false),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
