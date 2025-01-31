import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class SettingsTileWidget extends StatelessWidget {
  final IconData icon; final String title; final VoidCallback onTap;
  const SettingsTileWidget({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: MyColors.whiteColor,
        leading: CircleAvatar(
          backgroundColor: MyColors.primaryColor.withValues(alpha: 0.2),
          child: Icon(
            icon,
            color: MyColors.primaryColor,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
        onTap: onTap,
    
    );
  }
}