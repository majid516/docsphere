import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isSentByMe;
  final String timestamp;

  const ChatMessage({
    super.key,
    required this.text,
    required this.isSentByMe,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          SizedBox(width: isSentByMe ? 30 : 0),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              decoration: BoxDecoration(
                color: isSentByMe ? MyColors.primaryColor : Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                  bottomLeft:
                      isSentByMe ? const Radius.circular(12) : Radius.zero,
                  bottomRight:
                      isSentByMe ? Radius.zero : const Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha:  0.1),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: isSentByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSentByMe ? Colors.white : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Align(
                    alignment: !isSentByMe
                        ? Alignment.bottomLeft
                        : Alignment.bottomRight,
                    child: Text(
                      timestamp,
                      style: TextStyle(
                        fontSize: 12,
                        color: isSentByMe
                            ? Colors.white70
                            : Colors.black54, 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: isSentByMe ? 0 : 30),
        ],
      ),
    );
  }
}
