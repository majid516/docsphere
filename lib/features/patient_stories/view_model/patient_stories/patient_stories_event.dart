part of 'patient_stories_bloc.dart';

@freezed
class PatientStoriesEvent with _$PatientStoriesEvent {
  const factory PatientStoriesEvent.addPatientStories({required String doctorId,required PatientStoriesModel story}) = _AddPatientStories;
  const factory PatientStoriesEvent.fetchAllPatientStories({required String doctorId,}) = _FetchAllPatientStories;
}