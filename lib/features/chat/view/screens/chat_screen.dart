
import 'package:docshpere/features/chat/view_model/bloc/bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


class ChatPage extends StatelessWidget {
  final String userId;
  final String doctorId;
  final String roomId;

  const ChatPage({
    super.key,
    required this.userId,
    required this.doctorId,
    required this.roomId,
  });

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => ChatBloc()..add(ChatEvent.fetchMessage(roomId: roomId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chat with Doctor'),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    chatLoadingState: () => const Center(child: CircularProgressIndicator.adaptive()),
                    errorState: (error) => Center(child: Text('Error: $error')),
                    messageLoadedState: (messages) {
                      List<types.Message> chatMessages = messages.map((message) {
                        return types.TextMessage(
                          id: message.senderId,
                          author: types.User(id: message.senderId),
                          createdAt: message.timestamp.seconds * 1000, 
                          text: message.text,
                        );
                      }).toList();

                      return chat_ui.Chat(
                        messages: chatMessages,
                        user: types.User(id: userId),
                        onSendPressed: (newMessage) {
                          context.read<ChatBloc>().add(
                                ChatEvent.sendMessage(
                                  roomId: roomId,
                                  senderId: userId,
                                  text: newMessage.text,
                                ),
                              );
                        },
                      );
                    },
                    orElse: () => Container(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
