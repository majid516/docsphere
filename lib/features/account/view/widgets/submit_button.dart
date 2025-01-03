import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.nameController,
    required this.emailController,
    required this.profile,
    required this.contactController,
    required this.dobController,
    required this.bloodController,
    required this.genderController,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final String? profile;
  final TextEditingController contactController;
  final TextEditingController dobController;
  final TextEditingController bloodController;
  final TextEditingController genderController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          final user = UserModel(
              name: nameController.text.trim(),
              email: emailController.text.trim(),
              profileImage: profile ?? '',
              contactNumber: contactController.text.trim(),
              dob: dobController.text.trim(),
              bloodGroup: bloodController.text.trim(),
              gender: genderController.text.trim());
          context
              .read<ProfileBloc>()
              .add(ProfileEvent.updateUserData(user));
          showCustomSnackBar(
              context, 'updated profile successfully', false);
          context.go(MyRoutes.profileScreen,extra: user);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
      ),
      child: Text(
        'Submit',
        style: CommonStyles.commonButtonWhiteTextStyle,
      ),
    );
  }
}

