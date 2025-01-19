import 'dart:convert';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/doctor/view/widgets/doctor_text_styles.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';
import 'package:flutter/material.dart';

class ReviewTileWidget extends StatelessWidget {
  const ReviewTileWidget({
    super.key,
    required this.patientStories,
  });

  final List<PatientStoriesModel> patientStories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: patientStories.length,
        itemBuilder: (context, index) {
          final story =  patientStories[index];
          return ListTile(
            isThreeLine: true,
            leading: story.userProfile == '' || story.userProfile.isEmpty ? CircleAvatar(
              backgroundColor: MyColors.primaryColor.withAlpha(80),
              child: Icon(Icons.person, color: Colors.white),
            ): CircleAvatar(
              backgroundImage: MemoryImage(base64Decode(story.userProfile)),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(story.userName,
                        style: DoctorScreenStyles.storiesTitle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Today',
                      style: CommonStyles.dateTime,
                    ),
                  ],
                ),
                SizedBox(height: 4),
              ],
            ),
            subtitle: Text(
              story.story,
              style: DoctorScreenStyles.storiesStyle,
            ),
          );
        },
      ),
    );
  }
}
