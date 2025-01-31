import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/ai/model/ai_message_model.dart';
import 'package:docshpere/features/ai/services/ai_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'docsphere_ai_event.dart';
part 'docsphere_ai_state.dart';
part 'docsphere_ai_bloc.freezed.dart';

class DocsphereAiBloc extends Bloc<DocsphereAiEvent, DocsphereAiState> {
  DocsphereAiBloc() : super(_InitialState()) {
     on<_FetchAllChatsWithAi>((event, emit) async {
      try {
        emit(DocsphereAiState.messageloadingState());
        final records = await AiServices().fetchAllChatsWithAi();
        emit(DocsphereAiState.messageloadedState(records));
      } catch (e) {
        log(e.toString());
        emit(DocsphereAiState.errorState());
      }
    });
    on<_AddAiChats>((event, emit) async {
      try {
        await AiServices().addAiMessages(event.messages);
        
      } catch (e) {
        log(e.toString());
        emit(DocsphereAiState.errorState());
      }
    });
  }
}
