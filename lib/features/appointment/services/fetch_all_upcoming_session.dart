import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<List<UpcomingSessionModel>> fetchAllUpcomingSessions() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final bookingDocs = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .get();
    if (bookingDocs.docs.isNotEmpty) {
      return bookingDocs.docs.map((doc) {
        return UpcomingSessionModel.fromMap(doc.data());
      }).toList();
    }
    return [];
  } catch (e, stacktrace) {
    throw Exception('excption while feching bookings $e in $stacktrace');
  }
}
