import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/ai/model/ai_message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AiServices {
  final currentUser = FirebaseAuth.instance.currentUser;
  Future<void> addAiMessages(List<AiMessageModel> messages) async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        throw Exception('User is not authenticated');
      }
      for (var element in messages) {
         await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('AiChats')
          .doc()
          .set(element.toMap());
      }
     

    } catch (e, stackTrace) {
      log('Error adding ai chat $e');
      log(stackTrace.toString());
    }
  }

  Future<List<AiMessageModel>> fetchAllChatsWithAi() async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        return [];
      }

      final messageList = await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('AiChats')
          .get();

      if (messageList.docs.isNotEmpty) {
        return messageList.docs.map((record) {
          return AiMessageModel.fromMap(record.data());
        }).toList();
      }

      return [];
    } catch (e, stackTrace) {
      log('Error fetching chats with ai: $e');
      log(stackTrace.toString());
      return [];
    }
  }
}