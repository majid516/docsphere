part of 'chat_partners_bloc.dart';

@freezed
class ChatPartnersEvent with _$ChatPartnersEvent {
  const factory ChatPartnersEvent.fetchAllChatPartners() = _FetchAllChatPartners;
}