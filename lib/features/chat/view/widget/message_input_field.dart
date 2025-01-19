import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:docshpere/features/chat/services/fetch_client_data.dart';
import 'package:docshpere/features/chat/view_model/chat_bloc/chat_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageInputField extends StatelessWidget {
  final String userId;
  final String doctorId;
  final String doctorProfile;
  final String doctorName;
  final BuildContext parentContext;
  final TextEditingController _controller = TextEditingController();

  MessageInputField({
    super.key,
    required this.userId,
    required this.doctorId,
    required this.parentContext,
    required this.doctorProfile,
    required this.doctorName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                hintText: "Type a message...",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (_controller.text.trim().isEmpty) return;
              final message = MessageModel(
                  id: const Uuid().v4(),
                  text: _controller.text.trim(),
                  userId: userId,
                  doctorId: doctorId,
                  timestamp:
                      DateFormat('dd MMM yyyy hh:mm:ss a').format(DateTime.now()),
                  senderRole: 'user');
              final user = await fetchClientData();
              final chatPartnerModel = ChatPartnerModel(
                  clientId: FirebaseAuth.instance.currentUser!.uid,
                  doctorId: doctorId,
                  doctorProfile: doctorProfile,
                  lastMessage: message.text,
                  lastMessageTime: DateFormat('hh:mm a').format(DateTime.now()),
                  doctorName: doctorName,
                  clientName: user!['name']!,
                  clientProfile: user['profileImage']!);
              if (parentContext.mounted) {
                parentContext.read<ChatBloc>().add(ChatEvent.sendMessages(
                      chatPartnerModel: chatPartnerModel,
                      message: message,
                      userId: userId,
                      doctorId: doctorId,
                    ));
              }
              _controller.clear();

            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: MyColors.themeGradient,
              ),
              child: Icon(Icons.send, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
