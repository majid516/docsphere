part of 'top_reviewed_doctor_bloc.dart';

@freezed
class TopReviewedDoctorState with _$TopReviewedDoctorState {
  const factory TopReviewedDoctorState.initiaState() = _InitialState;
  const factory TopReviewedDoctorState.loadingState() = _LoadingState;
  const factory TopReviewedDoctorState.topReviewedDoctorLoadedState(List<Map<String, dynamic>> doctors) = _TopReviewedDoctorLoadedState;
  const factory TopReviewedDoctorState.errorState() = _ErrorState;
}