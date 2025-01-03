import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/doctor/model/doctor_full_details.dart';

Future<DoctorFullDetailsModel> fechDoctorFullDetails(String uid) async {
  try {
    final filteredDoctor = await FirebaseFirestore.instance
        .collection('doctor')
        .where('uid', isEqualTo: uid)
        .get();

    if (filteredDoctor.docs.isNotEmpty) {
      return DoctorFullDetailsModel.fromMap(filteredDoctor.docs.first.data());
    } else {
      throw Exception('No doctor found with the provided UID');
    }
  } catch (e, stackTrace) {
    log(stackTrace.toString());
    throw Exception('Exception thrown while fetching doctor full details: $e');
  }
}
