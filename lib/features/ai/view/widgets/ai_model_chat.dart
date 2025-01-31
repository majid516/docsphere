import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class AiModelChat extends StatelessWidget {
  const AiModelChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CircleAvatar(
                             radius: 15,
                             backgroundColor: MyColors.whiteColor,
                             backgroundImage: AssetImage('asset/Drawer icons/ai_icon.png'),
                           ),
                 ),
              Container(
                width: ScreenSize.width * 0.84,
                decoration: BoxDecoration(
                   color: Colors.grey.withValues(alpha:  0.2),
                  borderRadius: BorderRadius.circular(10),
                 
                  
                ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Docsphere AI Introduction',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Docsphere AI is a smart health assistant that helps you find the right category of doctor based on your health symptoms. '
                      'If you\'re unsure whether you need a gynecologist, ophthalmologist, or any other specialist, Docsphere AI can analyze your symptoms and guide you to the right medical professional.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'How to ask Docsphere AI:',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Example:your current health condition or symptoms eg: "back pain"',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
               
                
              ),
            ],
          ),
        ),
      ],
    );
  }
}
