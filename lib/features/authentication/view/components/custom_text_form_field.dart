import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/exceptions/form_validator/form_validators.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget trailing;
  final Icon leading;
  final bool obscureText;
  final String errorMessage;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leading,
    required this.trailing,
    required this.obscureText,
    required this.errorMessage,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: TextFormField(
        obscureText: obscureText,
        validator: validator ?? (value) => FormValidators.commonValidator(value, massage: errorMessage), // Use custom validator if provided
        cursorColor: MyColors.darkGreyColor,
        controller: controller,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: MyColors.errorRed, fontSize: 12),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: leading,
          ),
          suffixIcon: trailing,
          hintText: hintText,
          hintStyle: AuthenticationSyles.hintTextStyle,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              width: 5,
              color: MyColors.darkGreyColor,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: MyColors.darkGreyColor, width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: MyColors.primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
