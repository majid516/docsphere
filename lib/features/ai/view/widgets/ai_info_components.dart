import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AiInfoComponents extends StatelessWidget {
  const AiInfoComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            'asset/Drawer icons/ai_icon.png',
            height: 150,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'What is Docsphere AI?',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Docsphere AI is a smart health assistant that helps you find the right category of doctor based on your health symptoms. If you're unsure whether you need a gynecologist, ophthalmologist, or any other specialist, Docsphere AI can analyze your symptoms and guide you to the right medical professional.",
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 20),
        Text(
          'Why Use Docsphere AI?',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Many people don't know which doctor to consult for specific health issues. This can lead to confusion and delays in getting the right treatment. Docsphere AI simplifies this process by analyzing your symptoms and instantly suggesting the most appropriate category of doctor for your condition.",
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 20),
        Text(
          'How Does It Work?',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "1. Enter your symptoms into the search bar.\n"
          "2. Docsphere AI analyzes your input and identifies your health concerns.\n"
          "3. It provides a recommendation for the type of doctor you should consult (e.g., Dermatologist, Cardiologist).\n"
          "4. You can then book an appointment directly through the app.",
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 20),
        Text(
          'Get Started Now!',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Use Docsphere AI to make informed decisions about your health. Finding the right doctor has never been easier.",
          style: TextStyle(fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 30),
        Center(
            child: InkWell(
          onTap: () => context.pop(),
          child: Container(
            width: ScreenSize.width * 0.7,
            height: 45,
            decoration: BoxDecoration(
                color: MyColors.primaryColor,
                border: Border.all(color: MyColors.primaryColor),
                borderRadius: BorderRadius.circular(7)),
            child: Center(
              child: Text(
                'Start Using Docsphere AI',
                style: CommonStyles.commonButtonWhiteTextStyle,
              ),
            ),
          ),
        )),
        Space.hSpace20
      ],
    );
  }
}
