import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> fetchDoctorPatientStoriesCount(String doctorId) async {
  try {
    final QuerySnapshot<Map<String, dynamic>> doctorsSnapshot =
        await FirebaseFirestore.instance
            .collection('doctor')
            .doc(doctorId)
            .collection('PatientStories')
            .get();

    return doctorsSnapshot.size;
  } catch (e) {
    log('Error fetching top reviewed doctors: $e');
    return 0;
  }
}
