part of 'manage_records_bloc.dart';

@freezed
class ManageRecordsState with _$ManageRecordsState {
  const factory ManageRecordsState.initialState() = _InitialState;
  const factory ManageRecordsState.loadingState() = _LoadingState;
  const factory ManageRecordsState.imageLoadedState(String path, String base) = _ImageLoadedState;
  const factory ManageRecordsState.fileLoadedState(String path, String base) = _LileLoadedState;
  const factory ManageRecordsState.errorState() = _ErrorState;
}
