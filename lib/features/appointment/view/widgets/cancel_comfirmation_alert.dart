import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/appointment/services/refund_services.dart';
import 'package:docshpere/features/appointment/view/widgets/cancellation_alert_components.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

Future<void> showCancelConfirmationDialog(
    String fees,
    BuildContext context,
    String bookedAt,
    String doctor,
    String date,
    String time,
    String doctorUid,
    bool refundAllow,
    String percent,
    String refundWarning) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: MyColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        title: Text(
          "Cancel Appointment",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.blackColor,
          ),
        ),
        content: CancellationAlertComponents(
            fees: fees,
            context: context,
            bookedAt: bookedAt,
            doctor: doctor,
            date: date,
            time: time,
            doctorUid: doctorUid,
            refundAllow: refundAllow,
            percent: percent,
            refundWarning: refundWarning),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
            child: Text("No", style: TextStyle(color: MyColors.darkGreyColor)),
          ),
          TextButton(
            onPressed: () {
              context.read<UpcomingSessionBloc>().add(
                  UpcomingSessionEvent.cancelAppointment(
                      date, time, doctorUid));
              context
                  .read<UpcomingSessionBloc>()
                  .add(UpcomingSessionEvent.fetchAllUpcomingSessions());
              Navigator.of(dialogContext).pop();
              DateTime now = DateTime.now();
              String formattedDateTime =
                  DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
              String actualAmount = '';
              final amount = int.tryParse(fees);
              if (amount != null && percent == '10') {
                actualAmount = (amount - (amount * 0.1)).toString();
                log(actualAmount);
              } else if (amount != null && percent == '50') {
                actualAmount = (amount - 50).toString();
                log(actualAmount);
              } else {
                actualAmount = fees;
              }
              final payment = PaymentModel(
                  id: 'id_failed',
                  profile: '',
                  doctorName: 'Docsphere',
                  amount: actualAmount,
                  status: 'success',
                  transactionType: 'credit',
                  date: formattedDateTime);
              RefundServices().addRefundPayment(payment, doctorUid);
              showCustomSnackBar(
                  context, 'Successfully canceled your slot', false);
            },
            child: Text("Yes", style: TextStyle(color: MyColors.errorRed)),
          ),
        ],
      );
    },
  );
}

Future<void> refundPaymet() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance
      .collection('user')
      .doc(currentUser!.uid)
      .collection('PaymentTransactions');
}
