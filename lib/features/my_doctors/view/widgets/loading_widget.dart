
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyDoctorsLoadingWidget extends StatelessWidget {
  const MyDoctorsLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5),
          child: ListTile(
            minTileHeight: 100 ,
            tileColor: MyColors.lightColor.withValues(alpha: 0.3),
          ),
        );
      },
    );
  }
}
