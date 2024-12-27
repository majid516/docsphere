import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:flutter/material.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.title,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title *",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: MyColors.blackColor,
            ),
          ),
          
          TextFormField(
            style: CommonStyles.doctorDetailsStyle,
            controller: controller,
            decoration: InputDecoration(
              hintStyle: AuthenticationSyles.hintTextStyle,
              hintText: hintText,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10), 
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: MyColors.lightGreyColor),
              ),
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
