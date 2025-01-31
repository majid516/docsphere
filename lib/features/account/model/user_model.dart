import 'dart:convert';

class UserModel {
  String? uid;
  String name;
  String email;
  String profileImage;
  String contactNumber;
  String dob;
  String bloodGroup;
  String gender;
  UserModel({
    this.uid,
    required this.name,
    required this.email,
    required this.profileImage,
    required this.contactNumber,
    required this.dob,
    required this.bloodGroup,
    required this.gender,
  });

  UserModel copyWith({
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
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profileImage: profileImage ?? this.profileImage,
      contactNumber: contactNumber ?? this.contactNumber,
      dob: dob ?? this.dob,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      gender: gender ?? this.gender,
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
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] != null ? map['uid'] as String : null,
      name: map['name'] as String,
      email: map['email'] as String,
      profileImage: map['profileImage'] as String,
      contactNumber: map['contactNumber'] as String,
      dob: map['dob'] as String,
      bloodGroup: map['bloodGroup'] as String,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, profileImage: $profileImage, contactNumber: $contactNumber, dob: $dob, bloodGroup: $bloodGroup, gender: $gender)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.name == name &&
      other.email == email &&
      other.profileImage == profileImage &&
      other.contactNumber == contactNumber &&
      other.dob == dob &&
      other.bloodGroup == bloodGroup &&
      other.gender == gender ;
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
      gender.hashCode;
  }
}
