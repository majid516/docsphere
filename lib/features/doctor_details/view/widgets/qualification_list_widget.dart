import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor_details/view/widgets/doctor_text_styles.dart';
import 'package:flutter/material.dart';

class QualificationListWidget extends StatelessWidget {
  const QualificationListWidget({
    super.key,
    required this.qualifications,
  });

  final List<String> qualifications;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualifications/Education',
              style: DoctorScreenStyles.titleStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: qualifications
                    .length, 
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Align text properly if it wraps
                      children: [
                        Icon(Icons.school, color: MyColors.darkGreyColor),
                        Space.wSpace10,
                        Expanded(
                          child: Text(
                            qualifications[index],
                            style: DoctorScreenStyles.medium,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
