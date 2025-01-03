import 'package:docshpere/features/medical_records/view/widgets/show_image_picker.dart';
import 'package:docshpere/features/medical_records/view/widgets/show_picked_item_preview.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showRecordPicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.picture_as_pdf, color: Colors.red),
                title: Text('Add PDF', style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  context
                      .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickFileformDevice());
                  showPreviewScreen(context, 'File');
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.image, color: Colors.blue),
                title: Text('Add Image', style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  showImagePicker(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

