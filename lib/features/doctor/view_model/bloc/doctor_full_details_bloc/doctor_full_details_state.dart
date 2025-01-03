part of 'doctor_full_details_bloc.dart';

@freezed
class DoctorFullDetailsState with _$DoctorFullDetailsState {
  const factory DoctorFullDetailsState.initialState() = _InitialState;
  const factory DoctorFullDetailsState.loadingState() = _LoadingState;
  const factory DoctorFullDetailsState.loadedState(DoctorFullDetailsModel doctor) = _LoadedState;
  const factory DoctorFullDetailsState.errorState() = _ErrorState;
}
