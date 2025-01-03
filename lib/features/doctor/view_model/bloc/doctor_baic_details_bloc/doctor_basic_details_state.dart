part of 'doctor_basic_details_bloc.dart';

@freezed
class DoctorBasicDetailsState with _$DoctorBasicDetailsState {
  const factory DoctorBasicDetailsState.initialState() = _InitialState;
  const factory DoctorBasicDetailsState.loadingState() = _LoadingState;
  const factory DoctorBasicDetailsState.basicDetaisLoadedState(List<BasicDoctorModel> doctors) = _LoadedState;
  const factory DoctorBasicDetailsState.errorState() = _ErrorState;
}
