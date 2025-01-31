import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/ai/model/ai_message_model.dart';
import 'package:docshpere/features/ai/view/widgets/ai_appbar.dart';
import 'package:docshpere/features/ai/view/widgets/ai_chat_list.dart';
import 'package:docshpere/features/ai/view/widgets/ai_chat_loding_widget.dart';
import 'package:docshpere/features/ai/view/widgets/ai_loading_widget.dart';
import 'package:docshpere/features/ai/view/widgets/ai_messge_input_field.dart';
import 'package:docshpere/features/ai/view/widgets/ai_model_chat.dart';
import 'package:docshpere/features/ai/view_model/bloc/docsphere_ai_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LiveChattingScreen extends StatelessWidget {
  final TextEditingController controller ;
  final List<Map<String, String>> messages;
  final VoidCallback sendMessage;
  final bool isLoading;
  const LiveChattingScreen({super.key, required this.controller, required this.messages, required this.isLoading, required this.sendMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CreativeAppBar(
        preferredSize: Size(ScreenSize.width, 70),
        messages: messages,
      ),
      backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DocsphereAiBloc, DocsphereAiState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return AiAllChatLoadingWidget();
                  },
                  messageloadedState: (messageList) {
                    List<AiMessageModel> messageModels =
                        messages.map((message) {
                      return AiMessageModel(
                        text: message['text']!,
                        time: message['time']!,
                        sender: message['sender']!,
                      );
                    }).toList();
                    List<AiMessageModel> combinedMessages =
                        List.from(messageList);
                    combinedMessages.addAll(messageModels);
                    combinedMessages.sort((a, b) => b.time.compareTo(a.time));
                    if (combinedMessages.isEmpty) {
                      return AiModelChat();
                    }
                    return AiChatListWidget(combinedMessages: combinedMessages);
                  },
                );
              },
            ),
          ),
          if (isLoading) AiLoadingWidget(),
          AiMessageInputFieldWidget(
            controller: controller,
            sendMessage: () {
              sendMessage();
            },
          ),
          Space.hSpace20,
        ],
      ),
    );
  }
}