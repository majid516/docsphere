import 'dart:convert';

class ChatPartnerModel {
  String clientProfile;
  String doctorProfile;
  String clientName;
  String doctorName;
  String doctorId;
  String clientId;
  String lastMessage;
  String lastMessageTime;
  ChatPartnerModel({
    required this.clientProfile,
    required this.doctorProfile,
    required this.clientName,
    required this.doctorName,
    required this.doctorId,
    required this.clientId,
    required this.lastMessage,
    required this.lastMessageTime,
  });

  ChatPartnerModel copyWith({
    String? clientProfile,
    String? doctorProfile,
    String? clientName,
    String? doctorName,
    String? doctorId,
    String? clientId,
    String? lastMessage,
    String? lastMessageTime,
  }) {
    return ChatPartnerModel(
      clientProfile: clientProfile ?? this.clientProfile,
      doctorProfile: doctorProfile ?? this.doctorProfile,
      clientName: clientName ?? this.clientName,
      doctorName: doctorName ?? this.doctorName,
      doctorId: doctorId ?? this.doctorId,
      clientId: clientId ?? this.clientId,
      lastMessage: lastMessage ?? this.lastMessage,
      lastMessageTime: lastMessageTime ?? this.lastMessageTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientProfile': clientProfile,
      'doctorProfile': doctorProfile,
      'clientName': clientName,
      'doctorName': doctorName,
      'doctorId': doctorId,
      'clientId': clientId,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime,
    };
  }

  factory ChatPartnerModel.fromMap(Map<String, dynamic> map) {
    return ChatPartnerModel(
      clientProfile: map['clientProfile'] as String,
      doctorProfile: map['doctorProfile'] as String,
      clientName: map['clientName'] as String,
      doctorName: map['doctorName'] as String,
      doctorId: map['doctorId'] as String,
      clientId: map['clientId'] as String,
      lastMessage: map['lastMessage'] as String,
      lastMessageTime: map['lastMessageTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatPartnerModel.fromJson(String source) => ChatPartnerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChatPartnerModel(clientProfile: $clientProfile, doctorProfile: $doctorProfile, clientName: $clientName, doctorName: $doctorName, doctorId: $doctorId, clientId: $clientId, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime)';
  }

  @override
  bool operator ==(covariant ChatPartnerModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.clientProfile == clientProfile &&
      other.doctorProfile == doctorProfile &&
      other.clientName == clientName &&
      other.doctorName == doctorName &&
      other.doctorId == doctorId &&
      other.clientId == clientId &&
      other.lastMessage == lastMessage &&
      other.lastMessageTime == lastMessageTime;
  }

  @override
  int get hashCode {
    return clientProfile.hashCode ^
      doctorProfile.hashCode ^
      clientName.hashCode ^
      doctorName.hashCode ^
      doctorId.hashCode ^
      clientId.hashCode ^
      lastMessage.hashCode ^
      lastMessageTime.hashCode;
  }
  }
