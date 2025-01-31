part of 'doctors_suggestions_bloc.dart';

@freezed
class DoctorsSuggestionsEvent with _$DoctorsSuggestionsEvent {
  const factory DoctorsSuggestionsEvent.started() = _Started;
}