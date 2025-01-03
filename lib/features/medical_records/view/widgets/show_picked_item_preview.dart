import 'package:docshpere/features/medical_records/view/widgets/show_image_preview.dart';
import 'package:docshpere/features/medical_records/view_model/manage_record_bloc/manage_records_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showPreviewScreen(BuildContext context, String fileType) {
  final parentContext = Navigator.of(context).context;

  context.read<ManageRecordsBloc>().stream.listen((state) {
    state.maybeWhen(
      orElse: () {},
      fileLoadedState: (path, base) {
        showImagePreviewDialog(parentContext, fileType, path, base);
      },
      imageLoadedState: (path, base) {
        showImagePreviewDialog(parentContext, fileType, path, base);
      },
      errorState: () {
        ScaffoldMessenger.of(parentContext).showSnackBar(
          SnackBar(content: Text("Failed to load image.")),
        );
      },
    );
  });
}

