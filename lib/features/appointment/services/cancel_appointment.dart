import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

Future<void> cancelAppointment(
    String slotDate, String slotTime, String uid) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final doc = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .where('slotDate', isEqualTo: slotDate)
        .where('slotTime', isEqualTo: slotTime)
        .get();

    final cancelledAt = DateFormat('yyyy-MM-dd hh:mm a').format(DateTime.now());
    if (doc.docs.isNotEmpty) {
      doc.docs.first.reference.update({'status': 'cancel'});
      doc.docs.first.reference.update({'cancelledAt': cancelledAt});
    }
    final doctor = await FirebaseFirestore.instance
        .collection('doctor')
        .doc(uid)
        .collection('Bookings')
        .where('slotDate', isEqualTo: slotDate)
        .where('slotTime', isEqualTo: slotTime)
        .get();
    final doctorTimeSlot = FirebaseFirestore.instance
        .collection('doctor')
        .doc(uid)
        .collection('doctorTimeSlots')
        .doc(slotDate);
    final snapshot = await doctorTimeSlot.get();
    if (snapshot.exists) {
      Map<String, dynamic>? data = snapshot.data();

      if (data != null &&
          data.containsKey('timeSlots') &&
          data['timeSlots'] is Map) {
        Map<String, dynamic> timeSlots =
            Map<String, dynamic>.from(data['timeSlots']);

        if (timeSlots.containsKey(slotTime)) {
          timeSlots[slotTime] = {
            'time': slotTime,
            'isBooked': "false",
            'user': null,
          };

          await doctorTimeSlot.update({'timeSlots': timeSlots});
        } else {}
      } else {}
    } else {}
    if (doctor.docs.isNotEmpty) {
      doctor.docs.first.reference.update({'status': 'cancel'});
      doctor.docs.first.reference.update({'cancelledAt': cancelledAt});
    }
  } catch (e) {
    log(e.toString());
  }
}
