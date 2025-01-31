import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

Future<void> sendEmailToDocsphere(String name, String email, [String message = '']) async {
  log('worked');

  final Uri params = Uri(
    scheme: 'mailto',
    path: 'docspherehospital@gmail.com',
    query: Uri.encodeFull(
        'subject=Contact from $name&body=Name: $name\nEmail: $email\nMessage: $message\n\n'),
  );
  final bool canLaunch = await canLaunchUrl(params);
  if (!canLaunch) {
    log('Cannot launch email client');
  } else {
    await launchUrl(params);
  }
}
