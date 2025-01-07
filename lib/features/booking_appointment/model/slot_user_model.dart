// ignore_for_file: , sort_constructors_first
import 'dart:convert';

class SlotUserModel {
  String uid;
  String name;
  String email;
  String profileImage;
  String contactNumber;
  String dob;
  String bloodGroup;
  String gender;
  String? createdAt;
  SlotUserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.profileImage,
    required this.contactNumber,
    required this.dob,
    required this.bloodGroup,
    required this.gender,
    this.createdAt,
  });

  SlotUserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? profileImage,
    String? contactNumber,
    String? dob,
    String? bloodGroup,
    String? gender,
    String? createdAt,
  }) {
    return SlotUserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
      contactNumber: contactNumber ?? this.contactNumber,
      dob: dob ?? this.dob,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      gender: gender ?? this.gender,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'profileImage': profileImage,
      'contactNumber': contactNumber,
      'dob': dob,
      'bloodGroup': bloodGroup,
      'gender': gender,
      'createdAt': createdAt,
    };
  }

  factory SlotUserModel.fromMap(Map<String, dynamic> map) {
    return SlotUserModel(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      profileImage: map['profileImage'] as String,
      contactNumber: map['contactNumber'] as String,
      dob: map['dob'] as String,
      bloodGroup: map['bloodGroup'] as String,
      gender: map['gender'] as String,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SlotUserModel.fromJson(String source) => SlotUserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SlotUserModel(uid: $uid, name: $name, email: $email, profileImage: $profileImage, contactNumber: $contactNumber, dob: $dob, bloodGroup: $bloodGroup, gender: $gender, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant SlotUserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.name == name &&
      other.email == email &&
      other.profileImage == profileImage &&
      other.contactNumber == contactNumber &&
      other.dob == dob &&
      other.bloodGroup == bloodGroup &&
      other.gender == gender &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      name.hashCode ^
      email.hashCode ^
      profileImage.hashCode ^
      contactNumber.hashCode ^
      dob.hashCode ^
      bloodGroup.hashCode ^
      gender.hashCode ^
      createdAt.hashCode;
  }
}
