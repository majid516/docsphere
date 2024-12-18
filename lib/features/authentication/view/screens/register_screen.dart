import 'package:docshpere/features/authentication/view/components/backgound_stack_widget.dart';
import 'package:docshpere/features/authentication/view/widgets/Register/register_component_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroudStackWidget(),
          RegisterComponentsWidgets(
              nameController: nameController,
              passwordController: passwordController,
              emailController: emailController,
              confirmPassController: confirmPassController),
        ],
      ),
    );
  }
}
