import 'dart:convert';
import 'package:docshpere/features/booking_appointment/model/slot_time_model.dart';
import 'package:flutter/foundation.dart';

class SlotModel {
  String date;
  List<TimeSlotModel> timeSlots;
  SlotModel({
    required this.date,
    required this.timeSlots,
  });

  SlotModel copyWith({
    String? date,
    List<TimeSlotModel>? timeSlots,
  }) {
    return SlotModel(
      date: date ?? this.date,
      timeSlots: timeSlots ?? this.timeSlots,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'timeSlots': timeSlots.map((x) => x.toMap()).toList(),
    };
  }

  factory SlotModel.fromMap(Map<String, dynamic> map) {
  return SlotModel(
    date: map['date'] as String,
    timeSlots: (map['timeSlots'] as Map<String, dynamic>).entries.map((entry) {
      return TimeSlotModel(
        time: entry.key, 
        isBooked: entry.value['isBooked'],
        user: entry.value['user'] 
      );
    }).toList(),
  );
}


  String toJson() => json.encode(toMap());

  factory SlotModel.fromJson(String source) => SlotModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SlotModel(date: $date, timeSlots: $timeSlots)';

  @override
  bool operator ==(covariant SlotModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.date == date &&
      listEquals(other.timeSlots, timeSlots);
  }

  @override
  int get hashCode => date.hashCode ^ timeSlots.hashCode;
}
