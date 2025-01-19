import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:docshpere/features/chat/view/widget/chat_message_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatMessageLoadedWidget extends StatelessWidget {
  const ChatMessageLoadedWidget({
    super.key,
    required this.sortedMessages,
  });

  final List<MessageModel> sortedMessages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sortedMessages.length,
      reverse: true,
      itemBuilder: (context, index) {
        final currentMessage = sortedMessages[index];
        final currentDateTime =
            DateFormat("d MMM yyyy hh:mm:ss a")
                .parse(currentMessage.timestamp);
    
        return ChatMessage(
          text: currentMessage.text,
          isSentByMe: currentMessage.senderRole == 'user',
          timestamp:
              DateFormat("d MMM yyyy hh:mm a").format(currentDateTime),
        );
      }, 
    );
  }
}
