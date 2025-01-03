import 'dart:convert';

import 'package:flutter/foundation.dart';

class RegisterUserModel {
  String uid;
  String name;
  String email;
  String role;
  String profileImage;
  String contactNumber;
  String dob;
  String bloodGroup;
  String gender;
  List<String> medicalRecords;
  List<String> appointments;
  List<String> notifications;
  String createdAt;
  RegisterUserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.role,
    required this.profileImage,
    required this.contactNumber,
    required this.dob,
    required this.bloodGroup,
    required this.gender,
    required this.medicalRecords,
    required this.appointments,
    required this.notifications,
    required this.createdAt,
  });

  RegisterUserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? role,
    String? profileImage,
    String? contactNumber,
    String? dob,
    String? bloodGroup,
    String? gender,
    List<String>? medicalRecords,
    List<String>? appointments,
    List<String>? notifications,
    String? createdAt,
  }) {
    return RegisterUserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      contactNumber: contactNumber ?? this.contactNumber,
      dob: dob ?? this.dob,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      gender: gender ?? this.gender,
      medicalRecords: medicalRecords ?? this.medicalRecords,
      appointments: appointments ?? this.appointments,
      notifications: notifications ?? this.notifications,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'role': role,
      'profileImage': profileImage,
      'contactNumber': contactNumber,
      'dob': dob,
      'bloodGroup': bloodGroup,
      'gender': gender,
      'medicalRecords': medicalRecords,
      'appointments': appointments,
      'notifications': notifications,
      'createdAt': createdAt,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      role: map['role'] as String,
      profileImage: map['profileImage'] as String,
      contactNumber: map['contactNumber'] as String,
      dob: map['dob'] as String,
      bloodGroup: map['bloodGroup'] as String,
      gender: map['gender'] as String,
      medicalRecords: List<String>.from((map['medicalRecords'] as List<String>),),
      appointments: List<String>.from((map['appointments'] as List<String>),),
      notifications: List<String>.from((map['notifications'] as List<String>),),
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) => RegisterUserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegisterUserModel(uid: $uid, name: $name, email: $email, role: $role, profileImage: $profileImage, contactNumber: $contactNumber, dob: $dob, bloodGroup: $bloodGroup, gender: $gender, medicalRecords: $medicalRecords, appointments: $appointments, notifications: $notifications, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant RegisterUserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.name == name &&
      other.email == email &&
      other.role == role &&
      other.profileImage == profileImage &&
      other.contactNumber == contactNumber &&
      other.dob == dob &&
      other.bloodGroup == bloodGroup &&
      other.gender == gender &&
      listEquals(other.medicalRecords, medicalRecords) &&
      listEquals(other.appointments, appointments) &&
      listEquals(other.notifications, notifications) &&
      other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      name.hashCode ^
      email.hashCode ^
      role.hashCode ^
      profileImage.hashCode ^
      contactNumber.hashCode ^
      dob.hashCode ^
      bloodGroup.hashCode ^
      gender.hashCode ^
      medicalRecords.hashCode ^
      appointments.hashCode ^
      notifications.hashCode ^
      createdAt.hashCode;
  }
}
