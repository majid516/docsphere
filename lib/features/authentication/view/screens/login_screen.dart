import 'package:docshpere/features/authentication/view/components/backgound_stack_widget.dart';
import 'package:docshpere/features/authentication/view/widgets/Login/login_component_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroudStackWidget(),
          LoginComponentsWidgets(
              emailController: nameController,
              passwordController: passwordController)
        ],
      ),
    );
  }
}
