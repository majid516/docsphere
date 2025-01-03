part of 'medical_records_bloc.dart';

@freezed
class MedicalRecordsEvent with _$MedicalRecordsEvent {
  const factory MedicalRecordsEvent.addMedicalRecords(RecordModel record) = _AddMedicalRecords;
  const factory MedicalRecordsEvent.fechAllMedicalRecords() = _FechAllMedicalRecords;
  const factory MedicalRecordsEvent.deleteMedicalRecord(String id) = _DeleteMedicalRecord;

}