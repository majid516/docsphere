part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchMessage({required String roomId}) = FetchMessage;
  const factory ChatEvent.createChatRoom({required String userId, required String doctorId}) = CreateChatRoom;
  const factory ChatEvent.sendMessage({required String roomId, required String senderId, required String text}) = SendMessage;
}
