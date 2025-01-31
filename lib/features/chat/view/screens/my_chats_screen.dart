import 'dart:convert';

import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/chat/view/widget/chat_partners_loading_widget.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../view_model/chat_partners_bloc/chat_partners_bloc.dart';

class MyChatsScreen extends StatelessWidget {
  const MyChatsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<ChatPartnersBloc>().add(ChatPartnersEvent.fetchAllChatPartners());
    return Scaffold(
     appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'My Chats',
          ),)
          ,
      backgroundColor: MyColors.whiteColor,
      body: BlocBuilder<ChatPartnersBloc, ChatPartnersState>(
        builder: (context, state) {
          return state.maybeWhen(
            chatPartnersLoaded: (chats) {
              if(chats.isEmpty){
                return Center(child: Text('No Chat Available', style: AuthenticationSyles.hintTextStyle,),);
              }
              return ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          MemoryImage(base64Decode(chat.doctorProfile)),
                    ),
                    title: Text(
                      chat.doctorName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(chat.lastMessage ,maxLines: 1,
                      overflow: TextOverflow.ellipsis,),
                    trailing: Text(
                      chat.lastMessageTime,
                       maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      context.push(MyRoutes.chatingScreen, extra: chat);
                    },
                  );
                },
              );
               
            },
            chatPartnersLoading: () {
              return ChatPartnersLoadingWidget();
            },
            orElse: () => SomethingWentWrongScreen(),
          );
        },
      ),
    );
  }
}
