import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/settings/view/widgets/settings_tile_widget.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Settings',
          )),
      backgroundColor: MyColors.whiteColor,
      body: SizedBox(
        height: ScreenSize.height,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              color: MyColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SwitchListTile(
                title: const Text('Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Turn app notifications on/off'),
                value: true,
                activeColor: MyColors.primaryColor,
                onChanged: (value) {
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: MyColors.whiteColor,
              child: SwitchListTile(
                title: const Text('Location',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Enable/disable location access'),
                value: true,
                activeColor: MyColors.primaryColor,
                onChanged: (value) {
                  // Handle location toggle
                },
              ),
            ),
            const SizedBox(height: 16.0),
            SettingsTileWidget(
              icon: Icons.contact_support,
              title: 'Contact Us',
              onTap: () {
                context.push(MyRoutes.contactUsPage);
              },
            ),
            CommonDivider(),
            SettingsTileWidget(
              icon: Icons.description,
              title: 'Terms and Conditions',
              onTap: () {
                context.push(MyRoutes.termsAndConditionsPage);
              },
            ),
            CommonDivider(),
            SettingsTileWidget(
              icon: Icons.privacy_tip,
              title: 'Privacy Policy',
              onTap: () {
                context.push(MyRoutes.privacyPolicyPage);
              },
            ),
            CommonDivider(),
            SettingsTileWidget(
              icon: Icons.share,
              title: 'Share This App',
              onTap: () {},
            ),
            CommonDivider(),
            SettingsTileWidget(
              icon: Icons.lightbulb,
              title: 'Suggest App Improvement',
              onTap: () {
                context.push(MyRoutes.suggestImprovementsPage);
              },
            ),
            CommonDivider(),
            Space.hSpace100,
            Center(
              child: Text(
                'Version 1.0.0',
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
