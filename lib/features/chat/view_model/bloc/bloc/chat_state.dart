part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initialState() = _InitialState;
  const factory ChatState.chatLoadingState() = _ChatLoadingState;
  const factory ChatState.messageLoadedState(List<MessageModel> messages) = _MessageLoadedState;
  const factory ChatState.chatRoomCreated(String roomId) = _ChatRoomCreated;
  const factory ChatState.errorState(String errorMessage) = _ErrorState;
}