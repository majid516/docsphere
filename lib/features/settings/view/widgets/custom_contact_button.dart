import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class CustomContactButton extends StatelessWidget {
   final IconData icon;
    final String label;
    final Color color;
    final bool isWhite;
    final VoidCallback onPressed;
  const CustomContactButton({super.key, required this.icon, required this.label, required this.color, required this.isWhite, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(ScreenSize.width * 0.43, 45),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        side: BorderSide(width: 1, color: MyColors.primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Icon(icon, color: isWhite ? Colors.white : MyColors.primaryColor),
      label: Text(
        label,
        style: TextStyle(
            fontSize: 14,
            color: isWhite ? Colors.white : MyColors.primaryColor),
      ),
    );
  }
}
