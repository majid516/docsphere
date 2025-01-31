part of 'doctors_suggestions_bloc.dart';

@freezed
class DoctorsSuggestionsState with _$DoctorsSuggestionsState {
  const factory DoctorsSuggestionsState.initialState() = _InitialState;
  const factory DoctorsSuggestionsState.loadingState() = _LoadingState;
  const factory DoctorsSuggestionsState.basicDetaisLoadedState(List<BasicDoctorModel> doctors) = _LoadedState;
  const factory DoctorsSuggestionsState.errorState() = _ErrorState;
  }
