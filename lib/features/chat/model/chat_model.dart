import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ChatModel {
  final String id;
  final List<String> user;
  final String lastMessage;
  final Timestamp lastMessageTime;

  ChatModel({
    required this.id,
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
  });

  ChatModel copyWith({
    String? id,
    List<String>? user,
    String? lastMessage,
    Timestamp? lastMessageTime,
  }) {
    return ChatModel(
      id: id ?? this.id,
      user: user ?? this.user,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user': user,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      id: map['id'] as String,
      user: List<String>.from(map['user'] as List),
      lastMessage: map['lastMessage'] as String,
      lastMessageTime: map['lastMessageTime'] as Timestamp,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChatModel(id: $id, user: $user, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime)';
  }

  @override
  bool operator ==(covariant ChatModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        listEquals(other.user, user) &&
        other.lastMessage == lastMessage &&
        other.lastMessageTime == lastMessageTime;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        user.hashCode ^
        lastMessage.hashCode ^
        lastMessageTime.hashCode;
  }
}
