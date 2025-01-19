import 'package:bloc/bloc.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:docshpere/features/chat/services/chat_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(_InitialState()) {
    on<_SendMessages>((event, emit) async {
  try {
    await ChatRepository().sendMessage(
      event.chatPartnerModel,
      event.message,
      event.userId,
      event.doctorId,
    );
    await emit.forEach<List<MessageModel>>(
      ChatRepository().getNewMessages(event.userId, event.doctorId),
      onData: (messages) => ChatState.newMessagesLoaded(messages),
      onError: (_, __) => ChatState.errorState(),
    );
  } catch (e) {
    emit(ChatState.errorState());
  }
});



    on<_FetchMessages>((event, emit) async {
      try {
        emit(ChatState.messageLoading());
        final messages =
            await ChatRepository().getMessages(event.userId, event.doctorId);
        emit(ChatState.messagesLoaded(messages));
      } catch (e) {
        emit(ChatState.errorState());
      }
    });
  }
}
