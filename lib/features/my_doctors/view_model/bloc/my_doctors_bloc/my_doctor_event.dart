part of 'my_doctor_bloc.dart';

@freezed
class MyDoctorEvent with _$MyDoctorEvent {
  const factory MyDoctorEvent.fetchAllMyDoctor() = _FetchAllMyDoctor;
}