
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class SortingOption extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const SortingOption({
    super.key, 
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              Icons.sort,
              color: MyColors.primaryColor,
              size: 24.0,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
