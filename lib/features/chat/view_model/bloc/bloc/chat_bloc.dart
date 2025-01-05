import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  StreamSubscription? _messagesSubscription; // Stream subscription
  final StreamController<List<MessageModel>> _messagesController =
      StreamController<List<MessageModel>>(); // StreamController

  ChatBloc() : super(const ChatState.initialState()) {
    on<FetchMessage>(_onFetchMessages);
    on<CreateChatRoom>(_onCreateChatRoom);
    on<SendMessage>(_onSendMessage);
  }

  // 🔹 Fetch messages in real-time using StreamController
  Future<void> _onFetchMessages(FetchMessage event, Emitter<ChatState> emit) async {
    try {
      emit(const ChatState.chatLoadingState());

      // Fetch messages from Firestore
    
      _messagesSubscription =  FirebaseFirestore.instance
          .collection('chatRooms')
          .doc(event.roomId)
          .collection('messages')
          .orderBy('timestamp', descending: false)
          .snapshots()
          .listen(
        (snapshot) {
          log(snapshot.docs.length.toString());
          if (snapshot.docs.isNotEmpty) {
            List<MessageModel> messages = snapshot.docs.map((doc) {
              return MessageModel.fromMap(doc.data());
            }).toList();
            _messagesController.add(messages); // Add messages to StreamController
          } else {
            _messagesController.addError('No messages found.');
          }
        },
        onError: (error) {
          _messagesController.addError('Error loading messages: $error');
        },
      );

      // Listen to the StreamController and emit states accordingly
      await for (var messages in _messagesController.stream) {
        emit(ChatState.messageLoadedState(messages)); // Emit after messages are received
      }
    } catch (e) {
      emit(ChatState.errorState(e.toString()));
    }
  }

  // 🔹 Create or return existing chat room
  Future<void> _onCreateChatRoom(CreateChatRoom event, Emitter<ChatState> emit) async {
    try {
      final existingRoom = await _checkForExistingRoom(event.userId, event.doctorId);

      if (existingRoom != null) {
        emit(ChatState.chatRoomCreated(existingRoom));
      } else {
        DocumentReference chatRoomRef = await FirebaseFirestore.instance.collection('chatRooms').add({
          'users': [event.userId, event.doctorId],
          'lastMessage': '',
          'lastMessageTime': Timestamp.now(),
        });

        emit(ChatState.chatRoomCreated(chatRoomRef.id));
      }
    } catch (e) {
      emit(ChatState.errorState(e.toString()));
    }
  }

  // 🔹 Send a new message
  Future<void> _onSendMessage(SendMessage event, Emitter<ChatState> emit) async {
    try {
      final messageData = {
        'roomId': event.roomId,
        'senderId': event.senderId,
        'text': event.text,
        'timestamp': Timestamp.now(),
      };

      // Save message in Firestore
      await FirebaseFirestore.instance.collection('chatRooms').doc(event.roomId).collection('messages').add(messageData);

      // Update last message in chat room
      await FirebaseFirestore.instance.collection('chatRooms').doc(event.roomId).update({
        'lastMessage': event.text,
        'lastMessageTime': Timestamp.now(),
      });

      // Fetch updated messages
      add(FetchMessage(roomId: event.roomId));
    } catch (e) {
      emit(ChatState.errorState(e.toString()));
    }
  }

  // 🔹 Check if a chat room exists
  Future<String?> _checkForExistingRoom(String userId, String doctorId) async {
    final existingRoom = await FirebaseFirestore.instance
        .collection('chatRooms')
        .where('users', arrayContains: userId)
        .get();

    if (existingRoom.docs.isNotEmpty) {
      return existingRoom.docs.first.id;
    }
    return null;
  }

  // Dispose subscription and StreamController when Bloc is closed
  @override
  Future<void> close() async {
    await _messagesSubscription?.cancel();
    await _messagesController.close();
    return super.close();
  }
}
