import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';

class BookingServices {
  Future<List<SlotModel>> fetchAllTimeSlots(String uid) async {
    try {
   
      final timeSlots = await FirebaseFirestore.instance
          .collection('doctor')
          .doc(uid)
          .collection('doctorTimeSlots')
          .get();
      final slots =  timeSlots.docs.map((val) {
       return SlotModel.fromMap(val.data());
      }).toList();
      return slots;
    } catch (e,stackTrace) {
      log(stackTrace.toString());
      throw Exception('exception thtowed while feching timeSlots');
    }
  }
}