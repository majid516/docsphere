part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initialState() = _InitialState;
  const factory ChatState.messageLoading() = _MessageLoadingState;
  const factory ChatState.chatPartnersLoading() = _ChatPartnersLoading;
  const factory ChatState.loadedState() = _LoadedState;
  const factory ChatState.messagesLoaded(List<MessageModel> messages) = _MessageLoadedState;
 const factory ChatState.newMessagesLoaded(List<MessageModel> messages) =
      _NewMessagesLoaded;  const factory ChatState.chatPartnersLoaded(List<ChatPartnerModel> messages) = _ChatPartnersLoaded;
  const factory ChatState.errorState() = _ErrorState;
}
 