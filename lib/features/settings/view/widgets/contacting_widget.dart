import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/settings/services/launch_phone_call.dart';
import 'package:docshpere/features/settings/services/send_mail_to_docsphere.dart.dart';
import 'package:docshpere/features/settings/view/widgets/custom_contact_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ContactingWidget extends StatelessWidget {
  const ContactingWidget({
    super.key,
    required this.user,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomContactButton(
          icon: Icons.call,
          label: "Call Us",
          isWhite: false,
          color: MyColors.whiteColor,
          onPressed: launchPhone,
        ),
        CustomContactButton(
          icon: Icons.email,
          label: "Email Us",
          isWhite: true,
          color: MyColors.primaryColor,
          onPressed: () {
            sendEmailToDocsphere('Docsphere User', user?.email ?? '');
          },
        ),
      ],
    );
  }
}
