import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/medical_records/view/widgets/records_picker_sheet.dart';
import 'package:flutter/material.dart';

class AddRecordButton extends StatelessWidget {
  const AddRecordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              showRecordPicker(context);
            },
            child: Container(
              width: ScreenSize.width * 0.4,
              height: 35,
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  'Add Record',
                  style:
                      CommonStyles.commonButtonWhiteTextStyle,
                ),
              ),
            ),
          ),
        ),
        Space.hSpace40
      ],
    );
  }
}

