import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/ai/model/ai_message_model.dart';
import 'package:docshpere/features/ai/view/widgets/ai_message_tile.dart';
import 'package:flutter/material.dart';

class AiChatListWidget extends StatelessWidget {
  const AiChatListWidget({
    super.key,
    required this.combinedMessages,
  });

  final List<AiMessageModel> combinedMessages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: combinedMessages.length,
      reverse: true,
      itemBuilder: (context, index) {
        final message = combinedMessages[index];
        final isUser = message.sender == 'User';
       
        return Align(
          alignment: isUser
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: isUser
              ? Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 5, horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    message.text,
                    style: TextStyle(
                        color: isUser
                            ? Colors.black
                            : Colors.black87),
                  ),
                )
              : AiMessageTileWidget(
                  isUser: isUser, message: message.text),
        );
      },
    );
  }
}
