part of 'patient_stories_bloc.dart';

@freezed
class PatientStoriesState with _$PatientStoriesState {
  const factory PatientStoriesState.initiaState() = _InitialState;
  const factory PatientStoriesState.loadingState() = _LoadingState;
  const factory PatientStoriesState.storiesLoadedState(List<PatientStoriesModel> stories) = _StoriesLoadedState;
  const factory PatientStoriesState.errorState() = _ErrorState;
}
