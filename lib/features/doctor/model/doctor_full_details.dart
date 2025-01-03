// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class DoctorFullDetailsModel {
  String name;
  String category;
  String profile;
  String fees;
  String experience;
  List<String> specializations;
  List<String> qualifications;
  DoctorFullDetailsModel({
    required this.name,
    required this.category,
    required this.profile,
    required this.fees,
    required this.experience,
    required this.specializations,
    required this.qualifications,
  });

  DoctorFullDetailsModel copyWith({
    String? name,
    String? category,
    String? profile,
    String? fees,
    String? experience,
    List<String>? specializations,
    List<String>? qualifications,
  }) {
    return DoctorFullDetailsModel(
      name: name ?? this.name,
      category: category ?? this.category,
      profile: profile ?? this.profile,
      fees: fees ?? this.fees,
      experience: experience ?? this.experience,
      specializations: specializations ?? this.specializations,
      qualifications: qualifications ?? this.qualifications,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'category': category,
      'profile': profile,
      'fees': fees,
      'experience': experience,
      'specializations': specializations,
      'qualifications': qualifications,
    };
  }

  factory DoctorFullDetailsModel.fromMap(Map<String, dynamic> map) {
    return DoctorFullDetailsModel(
      name: map['name'] as String,
      category: map['category'] as String,
      profile: map['profile'] as String,
      fees: map['fees'] as String,
      experience: map['experience'] as String,
      specializations: List<String>.from((map['specializations'] as List<dynamic>),),
      qualifications: List<String>.from((map['qualifications'] as List<dynamic>),),
    );
  }

  String toJson() => json.encode(toMap());

  factory DoctorFullDetailsModel.fromJson(String source) => DoctorFullDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DoctorFullDetailsModel(name: $name, category: $category, profile: $profile, fees: $fees, experience: $experience, specializations: $specializations, qualifications: $qualifications)';
  }

  @override
  bool operator ==(covariant DoctorFullDetailsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.category == category &&
      other.profile == profile &&
      other.fees == fees &&
      other.experience == experience &&
      listEquals(other.specializations, specializations) &&
      listEquals(other.qualifications, qualifications);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      category.hashCode ^
      profile.hashCode ^
      fees.hashCode ^
      experience.hashCode ^
      specializations.hashCode ^
      qualifications.hashCode;
  }
}
