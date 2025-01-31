import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/settings/model/app_suggestion_model.dart';
import 'package:docshpere/features/settings/services/add_app_improvements.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class SuggestImprovementsPage extends StatefulWidget {
  const SuggestImprovementsPage({super.key});

  @override
  State<SuggestImprovementsPage> createState() =>
      _SuggestImprovementsPageState();
}

class _SuggestImprovementsPageState extends State<SuggestImprovementsPage> {
  final TextEditingController _feedbackController = TextEditingController();
  String category = "UI/Design";
  int rating = 3;

  final List<String> categories = ["UI/Design", "Features", "Bugs", "Other"];

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'Suggest Improvements',
          )),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "We'd love to hear from you!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: MyColors.primaryColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Help us improve Docsphere by sharing your suggestions below:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: MyColors.darkGreyColor),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    setState(() {
                      rating = index + 1;
                    });
                  },
                  icon: Icon(
                    Icons.emoji_emotions,
                    color: index < rating
                        ? MyColors.primaryColor
                        : Colors.grey.shade400,
                    size: 30,
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            Text(
              "How would you rate our app?",
              style: TextStyle(fontSize: 16, color: MyColors.darkGreyColor),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: category,
              onChanged: (value) {
                setState(() {
                  category = value!;
                });
              },
              decoration: InputDecoration(
                labelText: "Category",
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              items: categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _feedbackController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Type your suggestion here...",
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (_feedbackController.text.trim().isEmpty) {
                  showCustomSnackBar(context, 'enter your feedback', true);
                  return;
                }
                showCustomSnackBar(
                    context,
                    "Your feedback has been submitted. We value your input!",
                    false);
                DateTime now = DateTime.now();
                String formattedDateTime =
                    DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
                final appSuggestion = AppSuggestionModel(
                    userMail: user!.email ?? 'not authenticated user',
                    rating: rating,
                    category: category,
                    suggestion: _feedbackController.text.trim(),
                    createdAt: formattedDateTime);
                await suggestAppImprovement(appSuggestion);

                _feedbackController.clear();
                setState(() {
                  rating = 3;
                  category = categories.first;
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(ScreenSize.width * 0.8, 45),
                backgroundColor: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
