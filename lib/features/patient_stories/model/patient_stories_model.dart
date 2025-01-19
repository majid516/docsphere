import 'dart:convert';

class PatientStoriesModel {
  final String userProfile;
  final String userName;
  final String story;
  final String createdAt;
  PatientStoriesModel({
    required this.userProfile,
    required this.userName,
    required this.story,
    required this.createdAt,
  });

  PatientStoriesModel copyWith({
    String? userProfile,
    String? userName,
    String? story,
    String? createdAt,
  }) {
    return PatientStoriesModel(
      userProfile: userProfile ?? this.userProfile,
      userName: userName ?? this.userName,
      story: story ?? this.story,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userProfile': userProfile,
      'userName': userName,
      'story': story,
      'createdAt': createdAt,
    };
  }

  factory PatientStoriesModel.fromMap(Map<String, dynamic> map) {
    return PatientStoriesModel(
      userProfile: map['userProfile'] as String,
      userName: map['userName'] as String,
      story: map['story'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PatientStoriesModel.fromJson(String source) => PatientStoriesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PatientStoriesModel(userProfile: $userProfile, userName: $userName, story: $story, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant PatientStoriesModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.userProfile == userProfile &&
      other.userName == userName &&
      other.story == story &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return userProfile.hashCode ^
      userName.hashCode ^
      story.hashCode ^
      createdAt.hashCode;
  }
}
