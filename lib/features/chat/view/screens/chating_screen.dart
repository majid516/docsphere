import 'dart:developer';
import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:docshpere/features/chat/view/widget/chat_loading_widget.dart';
import 'package:docshpere/features/chat/view/widget/chat_message_loaded_widget.dart';
import 'package:docshpere/features/chat/view/widget/chating_screen_appbar_widget.dart';
import 'package:docshpere/features/chat/view/widget/message_input_field.dart';
import 'package:docshpere/features/chat/view/widget/new_chat_loaded_state_widget.dart';
import 'package:docshpere/features/chat/view_model/chat_bloc/chat_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChatingScreen extends StatelessWidget {
  final ChatPartnerModel chatPartnerModel;
  const ChatingScreen({
    super.key,
    required this.chatPartnerModel,
  });

  @override
  Widget build(BuildContext context) {
    final userId = FirebaseAuth.instance.currentUser!.uid;
    context.read<ChatBloc>().add(ChatEvent.fetchMessages(
        userId: userId, doctorId: chatPartnerModel.doctorId));
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: ChatingScreenAppbarWidget(
            doctorName: chatPartnerModel.doctorName,
            category: 'cardiologist',
            profile: chatPartnerModel.doctorProfile,
          )),
      backgroundColor: MyColors.whiteColor,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                    newMessagesLoaded: (messages) {
                      return NewChatLoadedStateWidget(
                          userId: userId, chatPartnerModel: chatPartnerModel);
                    },
                    messageLoading: () {
                      return ChatLoadingWidget();
                    },
                    messagesLoaded: (messages) {
                      if (messages.isEmpty) {
                        return Center(
                          child: Text(
                            '"Start Messaging"\n👋 say hello 👋',
                            style: AuthenticationSyles.hintTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        );
                      }
                      List<MessageModel> sortedMessages = List.from(messages)
                        ..sort((a, b) {
                          DateTime dateA = DateFormat("d MMM yyyy hh:mm:ss a")
                              .parse(a.timestamp);
                          DateTime dateB = DateFormat("d MMM yyyy hh:mm:ss a")
                              .parse(b.timestamp);
                          return dateA.compareTo(dateB);
                        });
                      return ChatMessageLoadedWidget(sortedMessages: sortedMessages.reversed.toList());
                    },
                    orElse: () {
                      log(state.toString()); 
                      return SomethingWentWrongScreen(); 
                    },
                    errorState: () => GeneralErrorScreen());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MessageInputField(
              doctorName: chatPartnerModel.doctorName,
              doctorProfile: chatPartnerModel.doctorProfile,
              userId: userId,
              doctorId: chatPartnerModel.doctorId,
              parentContext: context,
            ),
          ),
          Space.hSpace30
        ],
      ),
    );
  }
}
