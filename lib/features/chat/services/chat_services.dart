import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/chat/model/chat_partner_model.dart';
import 'package:docshpere/features/chat/model/message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ChatRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<List<MessageModel>> getMessages(String userId, String doctorId) async {
  final conversationId = _generateConversationId(userId, doctorId);
  try {
    final rawData = await firestore.collection('conversations').get();

    final filteredDocs = rawData.docs
        .where((conversation) => conversation['conId'] == conversationId)
        .toList();

    if (filteredDocs.isNotEmpty) {
      final conversationDoc = filteredDocs.first; 
      final messagesSnapshot = await firestore
          .collection('conversations')
          .doc(conversationDoc.id)
          .collection('messages')
          .orderBy('timestamp', descending: false) 
          .get();

      if (messagesSnapshot.docs.isNotEmpty) {
        return messagesSnapshot.docs.map((msgDoc) {
          return MessageModel.fromMap(msgDoc.data());
        }).toList();
      } else {
        log('No messages found for this conversation');
        return [];
      }
    }
    log('No conversation found with conId: $conversationId');
    return []; 
  } catch (e) {
    log('Error fetching messages: $e');
    return [];
  }
}

Stream<List<MessageModel>> getNewMessages(String userId, String doctorId) {
  final conversationId = _generateConversationId(userId, doctorId);

  return firestore
      .collection('conversations')
      .where('conId', isEqualTo: conversationId)
      .snapshots()
      .asyncExpand((conversationSnapshot) async* {
        if (conversationSnapshot.docs.isNotEmpty) {
          final conversationDoc = conversationSnapshot.docs.first;

          // Stream new messages continuously by listening to the messages collection
          yield* firestore
              .collection('conversations')
              .doc(conversationDoc.id)
              .collection('messages')
              .orderBy('timestamp', descending: false)
              .snapshots()
              .map((messageSnapshot) =>
                  messageSnapshot.docs.map((doc) => MessageModel.fromMap(doc.data())).toList());
        } else {
          yield [];
        }
      });
}


// Stream<List<MessageModel>> getNewMessages(String userId, String doctorId) {
//   final conversationId = _generateConversationId(userId, doctorId);

//   return firestore
//       .collection('conversations')
//       .where('conId', isEqualTo: conversationId)
//       .snapshots()
//       .asyncMap((conversationSnapshot) async {
//         if (conversationSnapshot.docs.isNotEmpty) {
//           final conversationDoc = conversationSnapshot.docs.first;

//           return firestore
//               .collection('conversations')
//               .doc(conversationDoc.id)
//               .collection('messages')
//               .orderBy('timestamp', descending: true) // Get latest messages
//               .snapshots()
//               .map((messageSnapshot) => messageSnapshot.docs
//                   .map((doc) => MessageModel.fromMap(doc.data()))
//                   .toList());
//         } else {
//           return [];
//         }
//       })
//       .asyncExpand((event) => event as Stream<List<MessageModel>>);
// }




  Future<void> sendMessage(ChatPartnerModel chatPartnerModel,
      MessageModel message, String userId, String doctorId) async {
    final conversationId = _generateConversationId(userId, doctorId);
    await firestore
        .collection('conversations')
        .doc(conversationId)
        .set({'conId': conversationId});
        
    await firestore
        .collection('conversations')
        .doc(conversationId)
        .update(chatPartnerModel.toMap());

    await firestore
        .collection('conversations') 
        .doc(conversationId)
        .collection('messages')
        .add(message.toMap());
  }

  String _generateConversationId(String userId, String doctorId) {
    return '$userId-$doctorId';
  }


 Future<List<ChatPartnerModel>> getAllChats()async{
   final userId = FirebaseAuth.instance.currentUser!.uid;
  try {
    final rawData = await firestore.collection('conversations').get();

   final filteredDocs = rawData.docs
    .where((conversation) => (conversation['conId'] as String).startsWith(userId))
    .toList();
   log(filteredDocs.length.toString());
    if (filteredDocs.isNotEmpty) {
     return filteredDocs.map((doc){
        return ChatPartnerModel.fromMap(doc.data());
      }).toList();

    }
    return [];
  } catch (e) {
    log('Error fetching messages: $e');
    return [];
  }
 }




}
