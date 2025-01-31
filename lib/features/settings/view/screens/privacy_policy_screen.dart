import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/settings/view/widgets/agree_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Privacy Policy',
          )),
          backgroundColor: MyColors.whiteColor,
      body: Stack(
        children: [
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:  MyColors.primaryColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "At Docsphere, we value your privacy and strive to protect your personal information. This policy outlines how we collect, use, and safeguard your data.",
                        style: TextStyle(fontSize: 16, height: 1.6),
                      ),
                      SizedBox(height: 20),
                      Divider(thickness: 1.2),
                      policySection(
                        "1. Data Collection",
                        "We collect your name, email, contact number, and appointment details for the purpose of scheduling and reminders.",
                      ),
                      policySection(
                        "2. Data Usage",
                        "Your data is shared only with doctors for scheduling appointments and consultations. We do not share your information with third parties.",
                      ),
                      policySection(
                        "3. Data Security",
                        "We employ advanced encryption and data storage practices to ensure your information is protected.",
                      ),
                      policySection(
                        "4. Your Rights",
                        "You can access, update, or delete your information at any time by contacting us.",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          AgreeCustomButton(),
        ],
      ),
    );
  }

  Widget policySection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.primaryColor,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16, height: 1.6, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }
}
