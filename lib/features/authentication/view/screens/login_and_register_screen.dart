import 'package:docshpere/features/authentication/view/components/backgound_stack_widget.dart';
import 'package:docshpere/features/authentication/view/widgets/login_and_register_components.dart';
import 'package:flutter/material.dart';

class LoginAndRegisterScreen extends StatelessWidget {
  const LoginAndRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroudStackWidget(),
          LoginAndRegisterComponents()
        ],
      ),
    );
  }
}
