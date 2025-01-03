
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:flutter/material.dart';

class RecordLoadingWidget extends StatelessWidget {
  const RecordLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            minTileHeight: 100,
            tileColor:
                MyColors.lightGreyColor.withValues(alpha: 0.4),
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}

