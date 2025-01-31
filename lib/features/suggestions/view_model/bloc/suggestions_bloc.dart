import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/suggestions/services/suggestion_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestions_event.dart';
part 'suggestions_state.dart';
part 'suggestions_bloc.freezed.dart';

class SuggestionsBloc extends Bloc<SuggestionsEvent, SuggestionsState> {
  SuggestionsBloc() : super(_InitialState()) {
    on<_FetchSuggestions>((event, emit) {
      try {
        emit(SuggestionsState.loadingState());
        final suggestions = SuggestionServices().getSuggestions();
        emit(SuggestionsState.loadedState(suggestions));
      } on Exception catch (e) {
        log(e.toString());
      }
    });

    on<_UpdateSuggestion>((event, emit) async {
      try {
        emit(SuggestionsState.loadingState());
        await SuggestionServices().updateSuggestion(event.newSuggestion);
        final updatedSuggestions = SuggestionServices().getSuggestions();
        emit(SuggestionsState.loadedState(updatedSuggestions));
      } on Exception catch (e) {
        log(e.toString());
      }
    });
  }
}
