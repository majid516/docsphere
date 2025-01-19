import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PaymentServices {
  final currentUser = FirebaseAuth.instance.currentUser;
  Future<void> addPayment(PaymentModel payment) async {
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
      if (payment.status == 'success') {
        final paymentAdminDoc = FirebaseFirestore.instance
            .collection('admin')
            .doc('payments')
            .collection('PaymentTransactions');
        paymentAdminDoc.add(payment.toMap());
      }
    } catch (e, stackTrace) {
      log('Error adding payment: $e');
      log(stackTrace.toString());
    }
  }

  Future<List<PaymentModel>> fetchAllPayments() async {
    try {
      final userId = currentUser?.uid;
      if (userId == null) {
        throw Exception('User is not authenticated');
      }
      final rawData = await FirebaseFirestore.instance
          .collection('user')
          .doc(userId)
          .collection('PaymentTransactions')
          .get();

      if (rawData.docs.isEmpty) {
        log('No documents found in PaymentTransactions collection');
        return [];
      }
      if (rawData.docs.isNotEmpty) {
        return rawData.docs.map((payment) {
          return PaymentModel.fromMap(payment.data());
        }).toList();
      }
      return [];
    } catch (e, stackTrace) {
      log('Error fetching payments: $e');
      log(stackTrace.toString());
      return [];
    }
  }
}
