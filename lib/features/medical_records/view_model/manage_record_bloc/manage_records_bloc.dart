import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

part 'manage_records_event.dart';
part 'manage_records_state.dart';
part 'manage_records_bloc.freezed.dart';

class ManageRecordsBloc extends Bloc<ManageRecordsEvent, ManageRecordsState> {
  ManageRecordsBloc() : super(_InitialState()) {
     on<_PickImageFromGallery>((event, emit) async{
     try {
     emit(ManageRecordsState.loadingState());
       final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
        final unit = await image!.readAsBytes();
        final base = base64Encode(unit);
       emit(ManageRecordsState.imageLoadedState(image.path, base,'Image'));
     } catch (e) {
      log(e.toString());
       emit(ManageRecordsState.errorState());
       
     }
    });
    on<_PickImageFromCamera>((event, emit) async{
     try {
       emit(ManageRecordsState.loadingState());
       final XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
        final unit = await image!.readAsBytes();
        final base = base64Encode(unit);
        log(base);
       emit(ManageRecordsState.imageLoadedState(image.path, base,'Image'));
     } catch (e) {
      log(e.toString());
       emit(ManageRecordsState.errorState());
       
     }
    });

on<_PickFileFormDevice>((event, emit) async {
  try {
    emit(ManageRecordsState.loadingState());
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result == null) {
      emit(ManageRecordsState.errorState());
      log("File picking canceled.");
      return;
    }
    final filePath = result.files.single.path;
    if (filePath == null) {
      emit(ManageRecordsState.errorState());
      log("File path is null.");
      return;
    }
    final file = File(filePath);
    final unit = await file.readAsBytes();
    final base = base64Encode(unit);
    emit(ManageRecordsState.fileLoadedState(filePath, base,'File'));
  } catch (e, stackTrace) {
    log("Error picking file: $e");
    log(stackTrace.toString());
    emit(ManageRecordsState.errorState());
  }
});
  }
}
