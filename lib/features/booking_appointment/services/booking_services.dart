import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';
import 'package:docshpere/features/booking_appointment/model/slot_time_model.dart';
import 'package:docshpere/features/booking_appointment/model/slot_user_model.dart';

class BookingServices {
  Future<List<SlotModel>> fetchAllTimeSlots(String uid) async {
  try {
    final timeSlots = await FirebaseFirestore.instance
        .collection('doctor')
        .doc(uid)
        .collection('doctorTimeSlots')
        .get();

   final slots = timeSlots.docs.map((doc) {
      try {
        final data = doc.data();
        final date = data['date'];
        final timeSlotsData = data['timeSlots'];
        List<TimeSlotModel> timeSlots = [];
        if (timeSlotsData is List) {
          timeSlots = timeSlotsData.map((timeSlotData) {
            final userData = timeSlotData['user'];
            final user = userData != null ? SlotUserModel.fromMap(userData) : null;
            return TimeSlotModel(
              isBooked: timeSlotData['isBooked'],
              time: timeSlotData['time'],
              user: user,
            );
          }).toList();
        } 
        else if (timeSlotsData is Map<String, dynamic>) {
          timeSlots = timeSlotsData.entries.map((entry) {
            final time = entry.key;
            final timeSlotData = entry.value;
            final userData = timeSlotData['user'];
            final user = userData != null ? SlotUserModel.fromMap(userData) : null;
            return TimeSlotModel(
              isBooked: timeSlotData['isBooked'],
              time: time,
              user: user,
            );
          }).toList();
        } else {
          throw Exception('Invalid timeSlots data format');
        }

        return SlotModel(date: date, timeSlots: timeSlots);
      } catch (e) {
        log('Error creating SlotModel from document: ${doc.data()}');
        rethrow;
      }
    }).toList();

    return slots;
  } catch (e, stackTrace) {
    log(stackTrace.toString());
    throw Exception('Exception thrown while fetching timeSlots');
  }
}



}