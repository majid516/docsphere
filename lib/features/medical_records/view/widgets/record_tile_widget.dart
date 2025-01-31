import 'package:docshpere/features/medical_records/view/widgets/animated_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:docshpere/features/medical_records/view_model/cubit/cubit/delete_cubit_cubit.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';

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
                                            context
                                                .read<MedicalRecordsBloc>()
                                                .add(
                                                  MedicalRecordsEvent
                                                      .deleteMedicalRecord(
                                                          record.id!),
                                                );
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
                        AnimatedPart(
                          record: record,
                          slideState: slideState,
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
