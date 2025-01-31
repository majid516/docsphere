  import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhone() async {
    const phoneUrl = 'tel:+91943234523';
    if (await canLaunchUrl(Uri.parse(phoneUrl))) {
      await launchUrl(Uri.parse(phoneUrl));
    } else {
      throw 'Could not launch $phoneUrl';
    }
  }
