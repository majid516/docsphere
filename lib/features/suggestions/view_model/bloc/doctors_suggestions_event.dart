part of 'doctors_suggestions_bloc.dart';

@freezed
class DoctorsSuggestionsEvent with _$DoctorsSuggestionsEvent {
  const factory DoctorsSuggestionsEvent.fechBasicDoctorDetails(List<String> categories) = _FechBasicDoctorDetails;
}