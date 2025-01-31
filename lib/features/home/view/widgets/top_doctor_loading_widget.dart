import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/home_screen_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/home/view/widgets/second_part_of_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TopReviewedDoctorLoadingWidget extends StatelessWidget {
  const TopReviewedDoctorLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
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
                  'explore best doctors and more...',
                  style: HomeScreenStyles.smallText1,
                ),
              ],
            ),
          ),
          Space.hSpace20,
          Container(
            width: ScreenSize.width * 0.96,
            height: ScreenSize.height * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColors.whiteColor,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      width: ScreenSize.width * 0.26,
                      height: ScreenSize.width * 0.34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SecondPartOfLoading()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
