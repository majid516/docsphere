import 'dart:convert';

class BasicDoctorModel {
  String name;
  String category;
  String experience;
  String uid;
  String fees;
  String profile;  
  String workType;  
  String gender;  
  BasicDoctorModel({
    required this.name,
    required this.category,
    required this.experience,
    required this.uid,
    required this.fees,
    required this.profile,
    required this.workType,
    required this.gender,
  });

  BasicDoctorModel copyWith({
    String? name,
    String? category,
    String? experience,
    String? uid,
    String? fees,
    String? profile,
    String? workType,
    String? gender,
  }) {
    return BasicDoctorModel(
      name: name ?? this.name,
      category: category ?? this.category,
      experience: experience ?? this.experience,
      uid: uid ?? this.uid,
      fees: fees ?? this.fees,
      profile: profile ?? this.profile,
      workType: workType ?? this.workType,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'category': category,
      'experience': experience,
      'uid': uid,
      'fees': fees,
      'profile': profile,
      'workType': workType,
      'gender': gender,
    };
  }

  factory BasicDoctorModel.fromMap(Map<String, dynamic> map) {
    return BasicDoctorModel(
      name: map['name'] as String,
      category: map['category'] as String,
      experience: map['experience'] as String,
      uid: map['uid'] as String,
      fees: map['fees'] as String,
      profile: map['profile'] as String,
      workType: map['workType'] as String,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicDoctorModel.fromJson(String source) => BasicDoctorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BasicDoctorModel(name: $name, category: $category, experience: $experience, uid: $uid, fees: $fees, profile: $profile, workType: $workType, gender: $gender)';
  }

  @override
  bool operator ==(covariant BasicDoctorModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.category == category &&
      other.experience == experience &&
      other.uid == uid &&
      other.fees == fees &&
      other.profile == profile &&
      other.workType == workType &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      category.hashCode ^
      experience.hashCode ^
      uid.hashCode ^
      fees.hashCode ^
      profile.hashCode ^
      workType.hashCode ^
      gender.hashCode;
  }
}
