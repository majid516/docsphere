import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:docshpere/features/chat/services/chat_services.dart';
import 'package:docshpere/features/chat/view/widget/chat_message_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewChatLoadedStateWidget extends StatelessWidget {
  const NewChatLoadedStateWidget({
    super.key,
    required this.userId,
    required this.chatPartnerModel,
  });

  final String userId;
  final ChatPartnerModel chatPartnerModel;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MessageModel>>(
      stream:
          ChatRepository().getNewMessages(userId, chatPartnerModel.doctorId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        }

        final messages = snapshot.data ?? [];

        List<MessageModel> sortedMessages = List.from(messages)
          ..sort((a, b) {
            DateTime dateA =
                DateFormat("d MMM yyyy hh:mm:ss a").parse(a.timestamp);
            DateTime dateB =
                DateFormat("d MMM yyyy hh:mm:ss a").parse(b.timestamp);
            return dateA.compareTo(dateB);
          });
          final reversedList = sortedMessages.reversed.toList();
        return ListView.builder(
          itemCount: reversedList.length,
         reverse: true,
          itemBuilder: (context, index) {
            final currentMessage = reversedList[index];
            final currentDateTime = DateFormat("d MMM yyyy hh:mm:ss a")
                .parse(currentMessage.timestamp);

            return ChatMessage(
              message: currentMessage.text,
              isUser: currentMessage.senderRole == 'user',
              timestamp: DateFormat("hh:mm a").format(currentDateTime),
            );
          },
        );
      },
    );
  }
}
