import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';
import 'package:docshpere/features/patient_stories/services/fetch_user_base_details.dart';
import 'package:docshpere/features/patient_stories/view_model/patient_stories/patient_stories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

void showStoryDialog(BuildContext context,
    TextEditingController storyController, String doctorId) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        insetPadding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          height: ScreenSize.height * 0.4,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Write Patient Story",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Space.hSpace15,
              TextField(
                maxLines: 7,
                controller: storyController,
                decoration: InputDecoration(
                  hintText: "Write your story here...",
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),
              Space.hSpace15,
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () async {
                    if (storyController.text.isNotEmpty) {
                      final user = await fetchUserBaseDetails();
                      final story = PatientStoriesModel(
                        userName: user!['name']!,
                        userProfile: user['profileImage']!,
                        story: storyController.text.trim(),
                        createdAt: DateFormat('dd MMM yyyy hh:mm:ss a').format(
                          DateTime.now(),
                        ),
                      );
                      if (context.mounted) {
                        context.read<PatientStoriesBloc>().add(
                              PatientStoriesEvent.addPatientStories(
                                  doctorId: doctorId, story: story),
                            );
                        context.pop();
                        showCustomSnackBar(
                            context, 'successfully added your story', false);
                      }
                    }
                  },
                  child: Container(
                    width: ScreenSize.width * 0.5,
                    height: 40,
                    decoration: BoxDecoration(
                        color: MyColors.whiteColor,
                        border: Border.all(color: MyColors.primaryColor),
                        borderRadius: BorderRadius.circular(7)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload_file_outlined,
                          color: MyColors.primaryColor,
                        ),
                        Space.wSpace5,
                        Text(
                          'submit Your Stroy',
                          style: CommonStyles.commonButtonBlueTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
