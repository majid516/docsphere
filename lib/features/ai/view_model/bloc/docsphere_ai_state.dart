part of 'docsphere_ai_bloc.dart';

@freezed
class DocsphereAiState with _$DocsphereAiState {
  const factory DocsphereAiState.initialState() = _InitialState;
  const factory DocsphereAiState.messageloadingState() = _MessageLoadingState;
  const factory DocsphereAiState.errorState() = _ErrorState;
  const factory DocsphereAiState.messageloadedState(List<AiMessageModel> messages) = _MessageLoadedState;
}
