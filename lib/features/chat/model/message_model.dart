// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String id;
  final String roomId;
  final String senderId;
  final String text;
  final Timestamp timestamp;
  MessageModel({
    required this.id,
    required this.roomId,
    required this.senderId,
    required this.text,
    required this.timestamp,
  });

  MessageModel copyWith({
    String? id,
    String? roomId,
    String? senderId,
    String? text,
    Timestamp? timestamp,
  }) {
    return MessageModel(
      id: id ?? this.id,
      roomId: roomId ?? this.roomId,
      senderId: senderId ?? this.senderId,
      text: text ?? this.text,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'roomId': roomId,
      'senderId': senderId,
      'text': text,
      'timeStamp': timestamp,
    };
  }

factory MessageModel.fromMap(Map<String, dynamic> map) {
  return MessageModel(
    id: map['id'] as String? ?? '', // Provide a default value if null
    roomId: map['roomId'] as String? ?? '',
    senderId: map['senderId'] as String? ?? '', // Provide a default value if null
    text: map['text'] as String? ?? '', // Provide a default value if null
    timestamp: map['timeStamp'] as Timestamp? ?? Timestamp.now(), // Fallback to current timestamp
  );
}


  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) => MessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MessageModel(id: $id, roomId: $roomId, senderId: $senderId, text: $text, timeStamp: $timestamp)';
  }

  @override
  bool operator ==(covariant MessageModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.roomId == roomId &&
      other.senderId == senderId &&
      other.text == text &&
      other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      roomId.hashCode ^
      senderId.hashCode ^
      text.hashCode ^
      timestamp.hashCode;
  }
}
