import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> consultationCompleted(String slotDate, String slotTime, String doctorUid)async{
    final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final doc = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .where('slotDate', isEqualTo: slotDate)
        .where('slotTime', isEqualTo: slotTime)
        .get();
    
    if (doc.docs.isNotEmpty) {
      doc.docs.first.reference.update({'status': 'completed'});
    }
     final doctor = await FirebaseFirestore.instance
        .collection('doctor')
        .doc(doctorUid)
        .collection('Bookings')
        .where('slotDate', isEqualTo: slotDate)
        .where('slotTime', isEqualTo: slotTime)
        .get();
    
    if (doctor.docs.isNotEmpty) {
      doctor.docs.first.reference.update({'status': 'completed'});
    }
  } catch (e) {
    log(e.toString());
  } 
}