
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            SizedBox(
              width: 150,
              height: 250,
              child: Image.asset(
                'asset/images/opps!.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            
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
            TextButton(
              onPressed: () {
                context.push( MyRoutes.home);
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
