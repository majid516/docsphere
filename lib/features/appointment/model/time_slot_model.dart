import 'dart:convert';
import 'package:docshpere/features/booking_appointment/model/slot_user_model.dart';

class TimeSlotModel {
  String time;
  String isBooked;
  SlotUserModel? user;
  TimeSlotModel({
    required this.time,
    required this.isBooked,
    this.user,
  });

  TimeSlotModel copyWith({
    String? time,
    String? isBooked,
    SlotUserModel? user,
  }) {
    return TimeSlotModel(
      time: time ?? this.time,
      isBooked: isBooked ?? this.isBooked,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'isBooked': isBooked,
      'user': user?.toMap(),
    };
  }

  factory TimeSlotModel.fromMap(Map<String, dynamic> map) {
    return TimeSlotModel(
      time: map['time'] as String,
      isBooked: map['isBooked'] as String,
      user: map['user'] != null ? SlotUserModel.fromMap(map['user'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TimeSlotModel.fromJson(String source) => TimeSlotModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TimeSlotModel(time: $time, isBooked: $isBooked, user: $user)';

  @override
  bool operator ==(covariant TimeSlotModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.time == time &&
      other.isBooked == isBooked &&
      other.user == user;
  }

  @override
  int get hashCode => time.hashCode ^ isBooked.hashCode ^ user.hashCode;
}
