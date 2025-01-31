import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/ai/model/ai_message_model.dart';
import 'package:docshpere/features/ai/view_model/bloc/docsphere_ai_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SaveConversationAlert extends StatelessWidget {
  const SaveConversationAlert({super.key, required this.messages});
  final List<Map<String, String>> messages;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), 
      ),
      backgroundColor: MyColors.whiteColor,
      title:
        
          Text("Save Conversation?"),
        
      content: Text(
        "Do you want to save this conversation for future reference?",
        style: TextStyle(fontSize: 16),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
            context.pop();
          },
          child: Text(
            "No",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<DocsphereAiBloc>().add(
                  DocsphereAiEvent.addAiChats(
                    messages.map(
                      (doc) {
                        return AiMessageModel.fromMap(doc);
                      },
                    ).toList(),
                  ),
                );
          context.pop();
          context.pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:MyColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), 
            ),
          ),
          child: Text(
            "Yes",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
