import 'dart:developer';
import 'dart:io';

import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:docshpere/features/medical_records/services/funtions.dart';
import 'package:docshpere/features/medical_records/view_model/medical_records/medical_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


void showImagePreviewDialog(
    BuildContext context, String fileType, String? filePath, String base) {
      log(fileType);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          height: 300,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyColors.whiteColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: MyColors.primaryColor
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (filePath != null && fileType.contains("Image"))
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.file(File(filePath),
                      width: 130, height: 140, fit: BoxFit.cover),
                ),
              if (filePath != null && fileType == 'File')
                InkWell(
                  onTap: () {
                    openPdfFromBase64(base);
                  },
                  child: Icon(Icons.file_open,
                      size: 100, color: MyColors.primaryColor),
                ),
              if (filePath == null)
                const Icon(Icons.error, size: 100, color: Colors.grey),
              const SizedBox(height: 20),
              Text(fileType == 'File'?
                'open of $fileType':'Preview of $fileType',
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  if (filePath != null) {
                    final record = RecordModel(
                      path: base,
                      type: fileType,
                      id: DateFormat('yyyy-MM-dd HH:mm:ss')
                          .format(DateTime.now()),
                      createdAt: DateFormat('d MMM').format(DateTime.now()),
                    );

                    context
                        .read<MedicalRecordsBloc>()
                        .add(MedicalRecordsEvent.addMedicalRecords(record));
                    context
                        .read<MedicalRecordsBloc>()
                        .add(MedicalRecordsEvent.fechAllMedicalRecords());
                  }
                  Navigator.pop(context);
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
                      'Add Records',
                      style: CommonStyles.commonButtonWhiteTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
