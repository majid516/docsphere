import 'package:docshpere/features/medical_records/view/screens/medical_records_screen.dart';
import 'package:docshpere/features/medical_records/view/widgets/show_picked_item_preview.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showImagePicker(BuildContext context) {
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
                leading: Icon(Icons.camera, color: Colors.green),
                title: Text('Camera', style: TextStyle(fontSize: 16)),
                onTap: () {
                  context
                       .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickImageFromCamera());
                  showPreviewScreen(context, 'Image');
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.photo_library, color: Colors.purple),
                title: Text('Gallery', style: TextStyle(fontSize: 16)),
                onTap: () {
                  context
                       .read<ManageRecordsBloc>()
                      .add(ManageRecordsEvent.pickImageFromGallery());
                  showPreviewScreen(context, 'Image');
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
