import 'dart:convert';
class MessageModel {
  final String id;
  final String text;
  final String userId;
  final String doctorId;
  final String senderRole;
  final String timestamp;
  MessageModel({
    required this.id,
    required this.text,
    required this.userId,
    required this.doctorId,
    required this.senderRole,
    required this.timestamp,
  });

  MessageModel copyWith({
    String? id,
    String? text,
    String? userId,
    String? doctorId,
    String? senderRole,
    String? timestamp,
  }) {
    return MessageModel(
      id: id ?? this.id,
      text: text ?? this.text,
      userId: userId ?? this.userId,
      doctorId: doctorId ?? this.doctorId,
      senderRole: senderRole ?? this.senderRole,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'userId': userId,
      'doctorId': doctorId,
      'senderRole': senderRole,
      'timestamp': timestamp,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      id: map['id'] as String,
      text: map['text'] as String,
      userId: map['userId'] as String,
      doctorId: map['doctorId'] as String,
      senderRole: map['senderRole'] as String,
      timestamp: map['timestamp'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MessageModel.fromJson(String source) => MessageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MessageModel(id: $id, text: $text, userId: $userId, doctorId: $doctorId, senderRole: $senderRole, timestamp: $timestamp)';
  }

  @override
  bool operator ==(covariant MessageModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.text == text &&
      other.userId == userId &&
      other.doctorId == doctorId &&
      other.senderRole == senderRole &&
      other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      text.hashCode ^
      userId.hashCode ^
      doctorId.hashCode ^
      senderRole.hashCode ^
      timestamp.hashCode;
  }
}
