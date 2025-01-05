import 'dart:developer';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:docshpere/features/medical_records/services/funtions.dart';
import 'package:docshpere/features/medical_records/view_model/cubit/cubit/delete_cubit_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RecordTileWidget extends StatelessWidget {
  final List<RecordModel> records;

  const RecordTileWidget({
    required this.records,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final record = records[index];
        return BlocProvider(
            create: (context) => DeleteSwipeCubit(),
            child: BlocBuilder<DeleteSwipeCubit, bool>(
              builder: (context, slideState) {
                final deleteSwipe = context.read<DeleteSwipeCubit>();

                return GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (details.primaryDelta! < 10) {
                      deleteSwipe.isSwipeOpen();
                    } else if (details.primaryDelta! > 10) {
                      deleteSwipe.isSwipeClosed();
                    }
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        Container(
                          width: ScreenSize.width,
                          height: 90,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                          onPressed: () async {
                                             deleteSwipe.isSwipeClosed();
                                           context.read<MedicalRecordsBloc>().add(MedicalRecordsEvent.deleteMedicalRecord(record.id!),);
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            size: 30,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        AnimatedPositioned(
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
                        )
                      ],
                    ),
                  ),
                );
              },
            ));
      },
      separatorBuilder: (context, index) => CommonDivider(),
      itemCount: records.length,
    );
  }
}
