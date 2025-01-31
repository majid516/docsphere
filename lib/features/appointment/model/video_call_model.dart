import 'dart:convert';

class VideoCallModel {
  String userName;
  String userId;
  String doctorId;
  VideoCallModel({
    required this.userName,
    required this.userId,
    required this.doctorId,
  });

  VideoCallModel copyWith({
    String? userName,
    String? userId,
    String? doctorId,
  }) {
    return VideoCallModel(
      userName: userName ?? this.userName,
      userId: userId ?? this.userId,
      doctorId: doctorId ?? this.doctorId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userId': userId,
      'doctorId': doctorId,
    };
  }

  factory VideoCallModel.fromMap(Map<String, dynamic> map) {
    return VideoCallModel(
      userName: map['userName'] as String,
      userId: map['userId'] as String,
      doctorId: map['doctorId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoCallModel.fromJson(String source) => VideoCallModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VideoCallModel(userName: $userName, userId: $userId, doctorId: $doctorId)';

  @override
  bool operator ==(covariant VideoCallModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.userName == userName &&
      other.userId == userId &&
      other.doctorId == doctorId;
  }

  @override
  int get hashCode => userName.hashCode ^ userId.hashCode ^ doctorId.hashCode;
}
