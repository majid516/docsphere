import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class DocsphereContactCard extends StatelessWidget {
  const DocsphereContactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors.whiteColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.phone, color: MyColors.primaryColor),
                SizedBox(width: 8),
                Text(
                  "+91 9766542345",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email, color: MyColors.primaryColor),
                SizedBox(width: 8),
                Text(
                  "docspherehospital@gmail.com",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
