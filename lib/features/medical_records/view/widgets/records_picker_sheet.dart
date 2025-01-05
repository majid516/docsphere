import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/doctor/view/widgets/common_divider.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showRecordPicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.picture_as_pdf,
                    color: MyColors.primaryColor),
                title: const Text('Add PDF', style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  context
                      .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickFileformDevice());
                },
              ),
              CommonDivider(),
              ListTile(
                leading: const Icon(Icons.photo_library, color: Colors.purple),
                title: const Text('Add Image from Gallery',
                    style: TextStyle(fontSize: 16)),
                onTap: () {
                  context
                      .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickImageFromGallery());
                  Navigator.pop(context);
                },
              ),
              CommonDivider(),
              ListTile(
                leading: const Icon(Icons.camera, color: Colors.green),
                title: const Text('Add Image from Camera',
                    style: TextStyle(fontSize: 16)),
                onTap: () {
                  context
                      .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickImageFromCamera());
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
