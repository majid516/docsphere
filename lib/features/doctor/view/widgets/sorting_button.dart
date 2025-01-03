import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/doctor/view/widgets/soting_sheet.dart';
import 'package:flutter/material.dart';

class SortingButton extends StatelessWidget {
  const SortingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: IconButton(
        onPressed: () {
          sortingSheet(context);
        },
        icon: Icon(
          Icons.sort,
          color: MyColors.whiteColor,
        ),
      ),
    );
  }
}

