part of 'top_reviewed_doctor_bloc.dart';

@freezed
class TopReviewedDoctorEvent with _$TopReviewedDoctorEvent {
  const factory TopReviewedDoctorEvent.fetchTopReviewedDoctors() = _FetchTopReviewedDoctors;
}