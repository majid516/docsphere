import 'dart:convert';
import 'package:flutter/foundation.dart';

class SlotModel {
  String date;
  List<String> timeSlots;

  SlotModel({
    required this.date,
    required this.timeSlots,
  });

  SlotModel copyWith({
    String? date,
    List<String>? timeSlots,
  }) {
    return SlotModel(
      date: date ?? this.date,
      timeSlots: timeSlots ?? this.timeSlots,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'timeSlots': timeSlots,
    };
  }

  factory SlotModel.fromMap(Map<String, dynamic> map) {
    List<String> timeSlots = (map['timeSlots'] as List)
        .map((e) => e.toString()) 
        .toList();

    return SlotModel(
      date: map['date'] as String,
      timeSlots: timeSlots,
    );
  }

  String toJson() => json.encode(toMap());

  factory SlotModel.fromJson(String source) =>
      SlotModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SlotModel(date: $date, timeSlots: $timeSlots)';

  @override
  bool operator ==(covariant SlotModel other) {
    if (identical(this, other)) return true;

    return other.date == date && listEquals(other.timeSlots, timeSlots);
  }

  @override
  int get hashCode => date.hashCode ^ timeSlots.hashCode;
}
