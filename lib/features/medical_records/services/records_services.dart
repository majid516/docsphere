import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RecordsServices {
  final currentUser = FirebaseAuth.instance.currentUser;
  Future<void> addMedicalRecord(RecordModel record) async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        throw Exception('User is not authenticated');
      }

      final recordId = record.id;
      final recordWithId = record.copyWith(id: recordId);

      await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('medicalRecords')
          .doc(recordId)
          .set(recordWithId.toMap());

    } catch (e, stackTrace) {
      log('Error adding medical record: $e');
      log(stackTrace.toString());
    }
  }

  Future<List<RecordModel>> fetchAllMedicalRecords() async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        return [];
      }

      final recordsList = await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('medicalRecords')
          .get();

      if (recordsList.docs.isNotEmpty) {
        return recordsList.docs.map((record) {
          return RecordModel.fromMap(record.data());
        }).toList();
      }

      return [];
    } catch (e, stackTrace) {
      log('Error fetching medical records: $e');
      log(stackTrace.toString());
      return [];
    }
  }

  Future<void> deleteMedicalRecord(String id) async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        throw Exception('User is not authenticated');
      }
      if (id.isEmpty) {
        throw Exception('Invalid record ID');
      }

      await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('medicalRecords')
          .doc(id)
          .delete();

      log('Medical record deleted successfully.');
    } catch (e, stackTrace) {
      log('Error deleting medical record: $e');
      log(stackTrace.toString());
    }
  }
}
