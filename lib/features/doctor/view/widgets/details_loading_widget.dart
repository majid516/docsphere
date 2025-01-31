
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class DetailsLoadingWidget extends StatelessWidget {
  const DetailsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 80),
          shimmerContainer(height: 200),
          const CommonDivider(),
          shimmerContainer(height: 50),
          const CommonDivider(),
          Column(
            children: [
              shimmerContainer(height: 100),
              const CommonDivider(),
              shimmerContainer(height: 50),
            ],
          ),
          const CommonDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              shimmerContainer(height: 50, width: 150),
              shimmerContainer(height: 50, width: 150),
            ],
          ),
          const SizedBox(height: 10),
          shimmerContainer(height: 150),
        ],
      ),
    );
  }

  Widget shimmerContainer({double height = 50, double? width}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10), 
        ),
      ),
    );
  }
}

