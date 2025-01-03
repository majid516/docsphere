part of 'doctor_full_details_bloc.dart';

@freezed
class DoctorFullDetailsEvent with _$DoctorFullDetailsEvent {
  const factory DoctorFullDetailsEvent.fechDoctorFullDetails(String uid) = _FechDoctorFullDetails;
}