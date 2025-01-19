import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/booking_appointment/model/booking_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> addToMyBookings(BookingModel booking) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .add(booking.toMap());
        log(booking.uid);
    await FirebaseFirestore.instance
        .collection('doctor')
        .doc(booking.uid)
        .collection('Bookings')
        .add(booking.toMap());
  } catch (e) {
    log(e.toString());
  }
}

Future<List<BookingModel>> fetchAllBookings() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  try {
    final bookingDocs = await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser!.uid)
        .collection('Bookings')
        .get();
    if (bookingDocs.docs.isNotEmpty) {
      return bookingDocs.docs.map((doc) {
        return BookingModel.fromMap(doc.data());
      }).toList();
    }
    return [];
  } catch (e, stacktrace) {
    throw Exception('excption while feching bookings $e in $stacktrace');
  }
}
