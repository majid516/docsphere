import 'dart:convert';

class BasicDoctorModel {
  String name;
  String category;
  String experience;
  String uid;
  String fees;
  String profile;  // Added profile field

  BasicDoctorModel({
    required this.name,
    required this.category,
    required this.experience,
    required this.uid,
    required this.fees,
    required this.profile,  // Include in constructor
  });

  BasicDoctorModel copyWith({
    String? name,
    String? category,
    String? experience,
    String? uid,
    String? fees,
    String? profile,  // Include in copyWith
  }) {
    return BasicDoctorModel(
      name: name ?? this.name,
      category: category ?? this.category,
      experience: experience ?? this.experience,
      uid: uid ?? this.uid,
      fees: fees ?? this.fees,
      profile: profile ?? this.profile,  // Include in copyWith
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'category': category,
      'experience': experience,
      'uid': uid,
      'fees': fees,
      'profile': profile,  // Include in toMap
    };
  }

  factory BasicDoctorModel.fromMap(Map<String, dynamic> map) {
    return BasicDoctorModel(
      name: map['name'] ?? 'Unknown',
      category: map['category'] ?? 'Not Provided',
      experience: map['experience'] ?? 'Not Available',
      uid: map['uid'] ?? 'No uid',
      fees: map['fees'] ?? 'Not Set',
      profile: map['profile'] ?? '',  // Handle null profile with default value
    );
  }

  String toJson() => json.encode(toMap());

  factory BasicDoctorModel.fromJson(String source) => BasicDoctorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BasicDoctorModel(name: $name, category: $category, experience: $experience, uid: $uid, fees: $fees, profile: $profile)';
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
      other.profile == profile;  // Include profile in equality check
  }

  @override
  int get hashCode {
    return name.hashCode ^
      category.hashCode ^
      experience.hashCode ^
      uid.hashCode ^
      fees.hashCode ^
      profile.hashCode;  // Include profile in hashCode
  }
}
