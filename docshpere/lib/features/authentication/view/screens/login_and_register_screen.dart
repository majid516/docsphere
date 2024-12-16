import 'dart:math';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/authentication/view/components/backgound_stack_widget.dart';
import 'package:docshpere/features/authentication/view/components/custom_signIn_button.dart';
import 'package:flutter/material.dart';

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
                    height: ScreenSize.height * 0.44,
                    child: Center(
                      child: Text(
                        'Access your Care ',
                        style: AuthenticationSyles.mainHeadingStyle,
                      ),
                    ),
                  ),
              SizedBox(
                 width: ScreenSize.width,
                    height: ScreenSize.height * 0.5,
                child: Column(
                  spacing: 20,
                  children: [
              Space.hSpace40,
                    
                    CustomSignInButton(
                        buttonText: 'SIGN IN', action: () {}, isWhiteColor: true),
                    CustomSignInButton(
                        buttonText: 'SIGN UP', action: () {}, isWhiteColor: false),
              Space.hSpace5,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color:MyColors.lightGreyColor,
                              thickness: 1,
                              indent: ScreenSize.width * 0.07,
                              endIndent: 10,
                            ),
                          ),
                          const Text('or',style: TextStyle(fontSize: 22,color: MyColors.lightGreyColor,fontWeight: FontWeight.w700),),
                          Expanded(
                            child: Divider(
                              color:MyColors.lightGreyColor,
                              thickness: 1,
                              endIndent: ScreenSize.width * 0.07,
                              indent: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text('Login wigh Google',style: TextStyle(fontSize: 22,color: MyColors.lightGreyColor,fontWeight: FontWeight.w500)),
                    Stack(
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
                              ),
                              Icon(
                                Icons.hexagon_rounded,
                                size: 70,
                                color: MyColors.whiteColor,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'G',
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    )
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
