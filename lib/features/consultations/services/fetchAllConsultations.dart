import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/consultations/model/consultation_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ConsultationServices{
  Future<List<ConsultationModel>> fetchAllUpcomingSessions() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final bookingDocs = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .where('status', isEqualTo: 'completed')
        .get();
    if (bookingDocs.docs.isNotEmpty) {
      return bookingDocs.docs.map((doc) {
        return ConsultationModel.fromMap(doc.data());
      }).toList();
    }
    return [];
  } catch (e, stacktrace) {
    throw Exception('excption while feching bookings $e in $stacktrace');
  }
}

}