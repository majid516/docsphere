part of 'chat_partners_bloc.dart';

@freezed
class ChatPartnersState with _$ChatPartnersState {
  const factory ChatPartnersState.initialState() = _InitialState;
  const factory ChatPartnersState.chatPartnersLoading() = _ChatPartnersLoading;
  const factory ChatPartnersState.chatPartnersLoaded(List<ChatPartnerModel> messages) = _ChatPartnersLoaded;
  const factory ChatPartnersState.errorState() = _ErrorState;
}