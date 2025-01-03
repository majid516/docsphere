part of 'doctor_basic_details_bloc.dart';

@freezed
class DoctorBasicDetailsEvent with _$DoctorBasicDetailsEvent {
  const factory DoctorBasicDetailsEvent.fechBasicDoctorDetails(String category) = _FechBasicDoctorDetails;
}