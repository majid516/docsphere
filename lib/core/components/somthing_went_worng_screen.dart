
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:flutter/material.dart';

class SomethingWentWrongScreen extends StatelessWidget {
  const SomethingWentWrongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Error Image
            SizedBox(
              width: 150,
              height: 250,
              child: Image.asset(
                'asset/images/opps!.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            
            // Error Title
            Text(
              'OOPS! Something Went Wrong',
              style: CommonStyles.doctorNameStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            
            // Error Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'We couldn’t load the page you’re looking for. Please check your connection or try again later.',
                style: TextStyle(
                  fontSize: 16,
                  color: MyColors.lightGreyColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            
            // Retry Button
            ElevatedButton(
              onPressed: () {
                // Logic to retry or reload
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Retry',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Back to Home Button
            TextButton(
              onPressed: () {
                // Navigate to home screen
              //  Navigator.pushNamed(context, MyRoutes.home);
              },
              child: Text(
                'Go Back to Home',
                style: TextStyle(
                  fontSize: 16,
                  color: MyColors.primaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
