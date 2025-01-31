import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:flutter/material.dart';

class AiMessageTileWidget extends StatelessWidget {
  const AiMessageTileWidget({
    super.key,
    required this.isUser,
    required this.message,
  });

  final bool isUser;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Space.wSpace10,
        CircleAvatar(
          radius: 13,
          backgroundColor: MyColors.whiteColor,
          backgroundImage: AssetImage('asset/Drawer icons/ai_icon.png'),
        ),
        Flexible(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isUser ? MyColors.primaryColor : Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isUser ? Colors.black : Colors.black87,
              ),
              softWrap: true, 
            ),
          ),
        ),
      ],
    );
  }
}
