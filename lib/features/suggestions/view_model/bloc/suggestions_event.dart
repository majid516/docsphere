part of 'suggestions_bloc.dart';

@freezed
class SuggestionsEvent with _$SuggestionsEvent {
  const factory SuggestionsEvent.fetchSuggestions() = _FetchSuggestions;
  const factory SuggestionsEvent.updateSuggestion({
    required String newSuggestion,
  }) = _UpdateSuggestion;
}
