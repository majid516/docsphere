part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendMessages({required ChatPartnerModel chatPartnerModel,required MessageModel message, required String userId,required String doctorId}) = _SendMessages;
  const factory ChatEvent.fetchMessages({required String userId,required String doctorId}) = _FetchMessages;
  const factory ChatEvent.fetchNewMessage({required String userId,required String doctorId}) = _FetchNewMessage;
  const factory ChatEvent.fetchAllChatPartners() = _FetchAllChatPartners;
}