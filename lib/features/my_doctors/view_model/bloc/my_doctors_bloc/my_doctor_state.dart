part of 'my_doctor_bloc.dart';

@freezed
class MyDoctorState with _$MyDoctorState {
  const factory MyDoctorState.initialState() = _InitialState;
  const factory MyDoctorState.loadingState() = _LoadingState;
  const factory MyDoctorState.loadedState(List<MyDoctorModel> doctors) = _LoadedState;
  const factory MyDoctorState.errorState() = _ErrorState;
}
