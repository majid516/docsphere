import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';

Future<List<Map<String, dynamic>>> fetchTopReviewedDoctors() async {
  try {
    final QuerySnapshot<Map<String, dynamic>> doctorsSnapshot = await FirebaseFirestore.instance
        .collection('doctor')
        .get();

    List<Map<String, dynamic>> doctorReviewCounts = [];

    for (var doctorDoc in doctorsSnapshot.docs) {
      final QuerySnapshot<Map<String, dynamic>> reviewsSnapshot = await FirebaseFirestore.instance
          .collection('doctor')
          .doc(doctorDoc.id)
          .collection('PatientStories')
          .get();

      doctorReviewCounts.add({
        'doctor': BasicDoctorModel.fromMap(doctorDoc.data()), 
        'reviewCount': reviewsSnapshot.size,
      });
    }

    return doctorReviewCounts;
  } catch (e) {
    log('Error fetching top reviewed doctors: $e');
    return [];
  }
}
