part of 'manage_records_bloc.dart';

@freezed
class ManageRecordsEvent with _$ManageRecordsEvent {
    const factory ManageRecordsEvent.pickImageFromGallery() = _PickImageFromGallery;
  const factory ManageRecordsEvent.pickImageFromCamera() = _PickImageFromCamera;
  const factory ManageRecordsEvent.pickFileformDevice() = _PickFileFormDevice;
}