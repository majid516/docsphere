import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/ai/view/widgets/save_conversation_alert.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreativeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CreativeAppBar(
      {super.key, required this.preferredSize, required this.messages});
  final List<Map<String, String>> messages;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          if (messages.isNotEmpty) {
            showDialog(
                context: context,
                builder: (context) {
                  return SaveConversationAlert(
                    messages: messages,
                  );
                });
          } else {
            context.pop();
          }
        },
      ),
      title: const Text(
        "Docsphere AI",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: MyColors.whiteColor),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.info_outline, color: Colors.white),
          onPressed: () => context.push(MyRoutes.docsphereAIInfoScreen),
        ),
      ],
      backgroundColor: MyColors.secondaryColor,
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20.0),
        ),
      ),
    );
  }
}
