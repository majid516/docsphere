import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/widgets/top_doctors_detail_card_widget.dart';
import 'package:flutter/material.dart';

class TopReviewedDoctorDetailsWidget extends StatelessWidget {
  const TopReviewedDoctorDetailsWidget({
    super.key,
    required this.doctors,
    required this.topReviewsCount,
  });

  final List<BasicDoctorModel> doctors;
  final List<int> topReviewsCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width * 8,
      height: ScreenSize.height * 0.31,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.offline_bolt,
                      size: 28,
                      color: MyColors.whiteColor,
                    ),
                    Text(
                      ' Top reviewed doctors',
                      style: HomeScreenStyles.normalText1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Text(
                  'Explore best doctors and more...',
                  style: HomeScreenStyles.smallText1,
                ),
              ],
            ),
          ),
          Space.hSpace20,
          SizedBox(
            width: ScreenSize.width * 1,
            height: ScreenSize.height * 0.21,
            child: PageView.builder(
              itemCount: doctors.length,
              controller: PageController(viewportFraction: 0.9),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: TopDoctorDetailsCardWidget(
                    doctor: doctors[index],
                    storyCount: topReviewsCount[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
