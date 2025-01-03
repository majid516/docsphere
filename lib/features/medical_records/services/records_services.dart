import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class RecordsServices {
    final currentUser = FirebaseAuth.instance.currentUser;
 Future<void> addMedicalRecord(RecordModel record) async {
  try {
    final now = DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now());
    await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('medicalRecords')
        .doc(now)
        .set(record.toMap());
  } catch (e, stackTrace) {
    log(e.toString());
    log(stackTrace.toString());
  }
}

  Future<List<RecordModel>> fechAllMedicalRecords() async {
    try {
      final recordsList = await FirebaseFirestore.instance
          .collection('user')
          .doc(currentUser!.uid)
          .collection('medicalRecords')
          .get();
      if (recordsList.docs.isNotEmpty) {
      return   recordsList.docs.map((record){
          return RecordModel.fromMap(record.data());
        }).toList();
      }
      log('list is empty while feching medical records');
      return [];
    } catch (e) {
      return [];
    }
  }
  Future<void> deleteMedicalRecord(String id) async {
    try {
      await FirebaseFirestore.instance
          .collection('user')
          .doc(currentUser!.uid)
          .collection('medicalRecords')
          .doc(id).delete();
     
    } catch (e) {
      log(e.toString());
    }
  }
}
