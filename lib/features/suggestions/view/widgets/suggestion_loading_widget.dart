import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SuggestionLoadingWidget extends StatelessWidget {
  const SuggestionLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.31,
      child: Container(
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
                      width: ScreenSize.width * 0.2     ,
                      height: ScreenSize.width * 0.2  ,
                      decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ScreenSize.width * 0.65,
                  height: ScreenSize.height * 0.22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: 120,
                          height: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Space.hSpace10,
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: 150,
                          height: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Space.hSpace10,
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: 180,
                          height: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Space.hSpace10,
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          width: 200,
                          height: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Space.hSpace15,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Space.wSpace15,
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}
