import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/features/appointment/view_model/bloc/upcoming_session_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> showCancelConfirmationDialog(
    BuildContext context,
    String doctor,
    String date,
    String time,
    String doctorUid,
    bool refundAllow,
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
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Doctor: $doctor",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MyColors.darkGreyColor,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Date: $date",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MyColors.darkGreyColor,
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Time: $time",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MyColors.darkGreyColor,
              ),
            ),
            SizedBox(height: 12),
            if (refundAllow)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  refundWarning,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: MyColors.errorRed,
                  ),
                ),
              ),
            Text(
              "Are you sure you want to cancel this appointment?",
              style: TextStyle(
                fontSize: 15,
                color: MyColors.blackColor,
              ),
            ),
          ],
        ),
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

Future<void> refundPaymet()async{
  final currentUser = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance.collection('user').doc(currentUser!.uid)
  .collection('PaymentTransactions')
  ;
}