part of 'suggestions_bloc.dart';

@freezed
class SuggestionsState with _$SuggestionsState {
  const factory SuggestionsState.initialState() = _InitialState;
  const factory SuggestionsState.loadingState() = _LoadingState;
  const factory SuggestionsState.loadedState(List<String> suggestions) = _LoadedState;
  const factory SuggestionsState.errorState() = _ErrorState;
  }
