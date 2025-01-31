import 'dart:convert';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/doctor/view/widgets/doctor_text_styles.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';
import 'package:docshpere/features/patient_stories/view/widgets/story_title.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: patientStories.length,
        itemBuilder: (context, index) {
          final story = patientStories[index];
          final createdAt = story.createdAt;
          final inputFormat = DateFormat('dd MMM yyyy hh:mm:ss a');
          final dateTime = inputFormat.parse(createdAt);
          final formattedTime = DateFormat('dd MMM hh:mm a').format(dateTime);

          return ListTile(
            isThreeLine: true,
            leading: story.userProfile == '' || story.userProfile.isEmpty
                ? CircleAvatar(
                    backgroundColor: MyColors.primaryColor.withAlpha(80),
                    child: Icon(Icons.person, color: Colors.white),
                  )
                : CircleAvatar(
                    backgroundImage:
                        MemoryImage(base64Decode(story.userProfile)),
                  ),
            title: StoryTitle(story: story, formattedTime: formattedTime),
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
