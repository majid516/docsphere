import 'package:collection/collection.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
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
    var groupedMessages = groupBy(sortedMessages, (MessageModel message) {
      final currentDateTime = DateFormat("d MMM yyyy").parse(message.timestamp);
      return DateFormat('d MMM yyyy').format(currentDateTime);
    });

    return ListView.builder(
      reverse: true,
      itemCount: groupedMessages.keys.length,
      itemBuilder: (context, index) {
        String dateHeader = groupedMessages.keys.elementAt(index);
        List<MessageModel> messages = groupedMessages[dateHeader]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                color: MyColors.darkGreyColor.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                dateHeader,
                style: TextStyle(
                  fontSize: 14,
                  color: MyColors.darkGreyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ...messages.reversed.map(
              (currentMessage) {
                final currentDateTime = DateFormat("d MMM yyyy hh:mm:ss a")
                    .parse(currentMessage.timestamp);

                return ChatMessage(
                  message: currentMessage.text,
                  isUser: currentMessage.senderRole == 'user',
                  timestamp: DateFormat("hh:mm a").format(currentDateTime),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
