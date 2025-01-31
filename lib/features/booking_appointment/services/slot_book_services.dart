import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/features/booking_appointment/model/slot_user_model.dart';
import 'package:flutter/material.dart';

class SlotBookServices {
  Future<void> updateTimeSlot(String uid, String date, String time,
      String isBooked, SlotUserModel user) async {
    log('updateTimeSlot function will be called');
    try {
      final slotRef = FirebaseFirestore.instance
          .collection('doctor')
          .doc(uid)
          .collection('doctorTimeSlots')
          .doc(date);
      final slotDoc = await slotRef.get();
      if (slotDoc.exists) {
        final timeSlotsData = slotDoc.data()?['timeSlots'];

        if (timeSlotsData is Map<String, dynamic>) {
          final currentTimeSlots = timeSlotsData;

          if (currentTimeSlots.containsKey(time)) {
            currentTimeSlots[time] = {
              'isBooked': isBooked,
              'user': user.toMap(),
            };
            await slotRef.update({
              'timeSlots': currentTimeSlots,
            });
            log('Time slot updated successfully');
          } else {
            log('Time slot not found');
          }
        } else if (timeSlotsData is List<dynamic>) {
          Map<String, dynamic> currentTimeSlots = {};

          for (var slot in timeSlotsData) {
            if (slot is Map<String, dynamic> && slot.containsKey('time')) {
              currentTimeSlots[slot['time']] = slot;
            }
          }

          if (currentTimeSlots.containsKey(time)) {
            currentTimeSlots[time] = {
              'isBooked': isBooked,
              'user': user.toMap(),
            };
            await slotRef.update({
              'timeSlots': currentTimeSlots,
            });
          } else {
            log('Time slot not found in the list');
          }
        } else {
          log('Invalid timeSlots format');
          throw Exception('Invalid timeSlots format');
        }
      } else {
        log('Slot document not found for date: $date');
        throw Exception('Slot document not found');
      }
    } catch (e, stackTrace) {
      log('Error in updateTimeSlot: $e');
      log(stackTrace.toString());
      throw Exception('Exception thrown while updating timeSlot: $e');
    }
  }

  void bookAppointment(
      {required String date,
      required BuildContext context,
      required String uid,
      required String selectedTime,
      required String isBooked,
      required SlotUserModel user}) async {
    log('book appointment function will be called');

    if (selectedTime.isEmpty) {
      showCustomSnackBar(context, 'Please select a slot', true);
      return;
    }
    await SlotBookServices()
        .updateTimeSlot(uid, date, selectedTime, isBooked, user);
    if (context.mounted) {
      showCustomSnackBar(context, 'Successfully slot booked', false);
    }
    return;
  }
}
