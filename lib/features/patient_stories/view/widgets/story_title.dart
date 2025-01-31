import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/doctor/view/widgets/doctor_text_styles.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';
import 'package:flutter/material.dart';

class StoryTitle extends StatelessWidget {
  const StoryTitle({
    super.key,
    required this.story,
    required this.formattedTime,
  });

  final PatientStoriesModel story;
  final String formattedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                story.userName,
                style: DoctorScreenStyles.storiesTitle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              formattedTime,
              style: CommonStyles.dateTime,
            ),
          ],
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
