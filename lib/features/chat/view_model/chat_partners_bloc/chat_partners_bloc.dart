import 'package:bloc/bloc.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/services/chat_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_partners_event.dart';
part 'chat_partners_state.dart';
part 'chat_partners_bloc.freezed.dart';

class ChatPartnersBloc extends Bloc<ChatPartnersEvent, ChatPartnersState> {
  ChatPartnersBloc() : super(_InitialState()) {
    on<_FetchAllChatPartners>((event, emit) async {
      try {
        emit(ChatPartnersState.chatPartnersLoading());
        final chatPartners = await ChatRepository().getAllChats();
        emit(ChatPartnersState.chatPartnersLoaded(chatPartners));
      } catch (e) {
        emit(ChatPartnersState.errorState());
      }
    });
  }
}
 