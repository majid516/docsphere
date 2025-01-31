import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RefundServices {
  final currentUser = FirebaseAuth.instance.currentUser;
  Future<void> addRefundPayment(PaymentModel payment, String docId) async {
    final userId = currentUser?.uid;

    try {
      if (userId == null) {
        throw Exception('User is not authenticated');
      }
      final paymentDoc = FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('PaymentTransactions');
      paymentDoc.add(payment.toMap());
        final paymentAdminDoc = FirebaseFirestore.instance
            .collection('admin')
            .doc('payments')
            .collection('PaymentTransactions');
        paymentAdminDoc.add(payment.toMap());
        final doctor = FirebaseFirestore.instance
            .collection('doctor')
            .doc(docId)
            .collection('PaymentTransactions');
        doctor.add(payment.toMap());
      
    } catch (e, stackTrace) {
      log('Error adding payment: $e');
      log(stackTrace.toString());
    }
  }
}