part of 'docsphere_ai_bloc.dart';

@freezed
class DocsphereAiEvent with _$DocsphereAiEvent {
  const factory DocsphereAiEvent.addAiChats(List<AiMessageModel> messages) = _AddAiChats;
  const factory DocsphereAiEvent.fetchAllChatsWithAi() = _FetchAllChatsWithAi;
}