import 'dart:convert';

class MyDoctorModel {
  String uid;
  String profile;
  String doctorName;
  String doctorCategory;
  MyDoctorModel({
    required this.uid,
    required this.profile,
    required this.doctorName,
    required this.doctorCategory,
  });

  MyDoctorModel copyWith({
    String? uid,
    String? profile,
    String? doctorName,
    String? doctorCategory,
  }) {
    return MyDoctorModel(
      uid: uid ?? this.uid,
      profile: profile ?? this.profile,
      doctorName: doctorName ?? this.doctorName,
      doctorCategory: doctorCategory ?? this.doctorCategory,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'profile': profile,
      'doctorName': doctorName,
      'doctorCategory': doctorCategory,
    };
  }

  factory MyDoctorModel.fromMap(Map<String, dynamic> map) {
    return MyDoctorModel(
      uid: map['uid'] as String,
      profile: map['profile'] as String,
      doctorName: map['doctorName'] as String,
      doctorCategory: map['doctorCategory'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyDoctorModel.fromJson(String source) => MyDoctorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MyDoctorModel(uid: $uid, profile: $profile, doctorName: $doctorName, doctorCategory: $doctorCategory)';
  }

  @override
  bool operator ==(covariant MyDoctorModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.profile == profile &&
      other.doctorName == doctorName &&
      other.doctorCategory == doctorCategory;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      profile.hashCode ^
      doctorName.hashCode ^
      doctorCategory.hashCode;
  }
}
