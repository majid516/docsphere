
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';

Future<List<BasicDoctorModel>> fechBasicDoctorDetails(String category) async {
 try {
   final filteredDoctor = await FirebaseFirestore.instance
      .collection('doctor')
      .where('category', isEqualTo: category).get();
      final doctors = filteredDoctor.docs.map((doctor){
        return BasicDoctorModel.fromMap(doctor.data());
      }).toList();
    return doctors;
 } catch (e, stackTrace) {
  log(stackTrace.toString());
   throw Exception('exception throwed while feching doctor basic details');
 }
}
 