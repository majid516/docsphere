part of 'medical_records_bloc.dart';

@freezed
class MedicalRecordsState with _$MedicalRecordsState {
  const factory MedicalRecordsState.initialState() = _InitialState;
  const factory MedicalRecordsState.loadingState() = _LoadingState;
  const factory MedicalRecordsState.recordloadingState() = _RecordLoadingState;
  const factory MedicalRecordsState.errorState() = _ErrorState;
  const factory MedicalRecordsState.recordsloadedState(List<RecordModel> records) = _RecordsLoadedState;
}
