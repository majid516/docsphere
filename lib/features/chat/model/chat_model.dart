import 'package:cloud_firestore/cloud_firestore.dart';

class ChatRoom {
  final String id;
  final List<String> users;
  final String lastMessage;
  final Timestamp lastMessageTime;
  final Timestamp createdAt;

  ChatRoom({
    required this.id,
    required this.users,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'users': users,
        'lastMessage': lastMessage,
        'lastMessageTime': lastMessageTime,
        'createdAt': createdAt,
      };

  factory ChatRoom.fromMap(Map<String, dynamic> map) => ChatRoom(
        id: map['id'] as String,
        users: List<String>.from(map['users'] as List),
        lastMessage: map['lastMessage'] as String,
        lastMessageTime: map['lastMessageTime'] as Timestamp,
        createdAt: map['createdAt'] as Timestamp,
      );
}
