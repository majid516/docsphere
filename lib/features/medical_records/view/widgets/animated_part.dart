// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:docshpere/features/medical_records/services/funtions.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimatedPart extends StatelessWidget {
  final bool slideState;
  const AnimatedPart({
    super.key,
    required this.slideState,
    required this.record,
  });

  final RecordModel record;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: slideState ? -ScreenSize.width * 0.3 : 0,
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
          width: ScreenSize.width,
          height: 90,
          child: Container(
            color: MyColors.whiteColor,
            child: ListTile(
                onTap: () {
                  if (record.type == 'File') {
                    openPdfFromBase64(record.path);
                  } else {
                    context.push(
                      MyRoutes.medicalRecordPerview,
                      extra: record.path,
                    );
                  }
                },
                leading: Container(
                  width: 60,
                  height: 75,
                  decoration: BoxDecoration(
                      color: MyColors.lightGreyColor
                          .withValues(alpha: 0.5),
                      borderRadius:
                          BorderRadius.circular(10)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        record.createdAt
                                    .split(' ')[0]
                                    .length ==
                                1
                            ? "0${record.createdAt.split(' ')[0]}"
                            : record.createdAt
                                .split(' ')[0],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyColors.blackColor,
                        ),
                      ),
                      Text(
                        record.createdAt.split(' ')[1],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: MyColors.darkGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                title: Text('Record Added By You',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10)),
                minTileHeight: 100,
                subtitle: record.type == 'File'
                    ? Text('contains file',
                        style:
                            CommonStyles.doctorDetailsStyle)
                    : Text(
                        'Contain Image',
                        style:
                            CommonStyles.doctorDetailsStyle,
                      )),
          )),
    );
  }
}
