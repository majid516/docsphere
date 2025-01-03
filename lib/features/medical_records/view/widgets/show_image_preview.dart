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
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          height: 300,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (filePath != null && fileType.contains("Image"))
                Image.file(File(filePath),
                    width: 100, height: 100, fit: BoxFit.cover),
              if (filePath != null && fileType == 'File')
                InkWell(
                    onTap: () {
                      openPdfFromBase64(base);
                    },
                    child: Icon(Icons.file_open,
                        size: 100, color: MyColors.primaryColor)),
              if (filePath == null)
                Icon(Icons.error, size: 100, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Preview of $fileType',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  if (filePath != null) {
                    final record = RecordModel(
                        path: base,
                        type: fileType,
                        id: DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()),
                        createdAt: DateFormat('d MMM').format(DateTime.now()));
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
                      borderRadius: BorderRadius.circular(6)),
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

