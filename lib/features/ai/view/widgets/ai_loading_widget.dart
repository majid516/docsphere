import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AiLoadingWidget extends StatelessWidget {
  const AiLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        constraints: BoxConstraints(
          maxWidth: ScreenSize.width * 0.8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 40,
                width: ScreenSize.width * 0.8,
                color: Colors.white),
            SizedBox(height: 5),
            Container(
                height: 10,
                width: ScreenSize.width * 0.5,
                color: Colors.white),
          ],
        ),
      ),
    );
  }
}
