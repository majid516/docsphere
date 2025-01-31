import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/consultations/model/consultation_model.dart';
import 'package:docshpere/features/consultations/view/widgets/patient_stories_box.dart';
import 'package:flutter/material.dart';

class StoryWritingButton extends StatelessWidget {
  const StoryWritingButton({
    super.key,
    required this.storyController,
    required this.session,
  });

  final TextEditingController storyController;
  final ConsultationModel session;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            showStoryDialog(
                context, storyController, session.uid);
          },
          child: Container(
            width: ScreenSize.width * 0.5,
            height: 40,
            decoration: BoxDecoration(
                color: MyColors.whiteColor,
                border:
                    Border.all(color: MyColors.primaryColor),
                borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_rounded,
                  color: MyColors.primaryColor,
                ),
                Space.wSpace5,
                Text(
                  'Write Your Stroy',
                  style: CommonStyles.commonButtonBlueTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
