import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/doctor_details/view/widgets/doctor_text_styles.dart';
import 'package:flutter/material.dart';

class SpecializationWidget extends StatelessWidget {
  const SpecializationWidget({
    super.key,
    required this.specializations,
  });

  final List<String> specializations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Specializations',
              style: DoctorScreenStyles.titleStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                  padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: specializations
                    .length, // Replace with your specialization list
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        Icon(Icons.verified_user_outlined,
                            color: MyColors.darkGreyColor),
                        Space.wSpace10,
                        Text(
                          specializations[index],
                          style: DoctorScreenStyles.medium,
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