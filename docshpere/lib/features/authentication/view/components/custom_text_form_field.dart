import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/exceptions/form_validator/form_validators.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final Icon trailing;
  final Icon leading;
  final bool obscureText;
  final TextEditingController controller;
  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leading,
    required this.trailing, 
    required this.obscureText,
  });

 // late FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) =>
            FormValidators.commonValidator(value, massage: ''),
        cursorColor: MyColors.darkGreyColor,
        controller: controller,
        decoration: InputDecoration(
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
