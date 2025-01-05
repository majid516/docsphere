// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  String? uid;
  String name;
  String email;
  String? role;
  String profileImage;
  String contactNumber;
  String dob;
  String bloodGroup;
  String gender;
  List<String>? appointments;
  List<String>? notifications;
  String? createdAt;
  UserModel({
     this.uid,
    required this.name,
    required this.email,
     this.role,
    required this.profileImage,
    required this.contactNumber,
    required this.dob,
    required this.bloodGroup,
    required this.gender,
     this.appointments,
     this.notifications,
     this.createdAt,
  });

  UserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? role,
    String? profileImage,
    String? contactNumber,
    String? dob,
    String? bloodGroup,
    String? gender,
    List<String>? appointments,
    List<String>? notifications,
    String? createdAt,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      contactNumber: contactNumber ?? this.contactNumber,
      dob: dob ?? this.dob,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      gender: gender ?? this.gender,
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
      'appointments': appointments,
      'notifications': notifications,
      'createdAt': createdAt,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      role: map['role'] as String,
      profileImage: map['profileImage'] as String,
      contactNumber: map['contactNumber'] as String,
      dob: map['dob'] as String,
      bloodGroup: map['bloodGroup'] as String,
      gender: map['gender'] as String,
      appointments: List<String>.from(
        (map['appointments'] as List<String>),
      ),
      notifications: List<String>.from(
        (map['notifications'] as List<String>),
      ),
      createdAt: map['createdAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, role: $role, profileImage: $profileImage, contactNumber: $contactNumber, dob: $dob, bloodGroup: $bloodGroup, gender: $gender, appointments: $appointments, notifications: $notifications, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.name == name &&
        other.email == email &&
        other.role == role &&
        other.profileImage == profileImage &&
        other.contactNumber == contactNumber &&
        other.dob == dob &&
        other.bloodGroup == bloodGroup &&
        other.gender == gender &&
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
        appointments.hashCode ^
        notifications.hashCode ^
        createdAt.hashCode;
  }
}
