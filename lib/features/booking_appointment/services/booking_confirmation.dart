import 'package:docshpere/core/utils/random_number_generator.dart';
import 'package:docshpere/features/booking_appointment/model/booking_model.dart';
import 'package:docshpere/features/booking_appointment/services/get_booked_user.dart';
import 'package:docshpere/features/booking_appointment/services/slot_book_services.dart';
import 'package:docshpere/features/booking_appointment/view_model/bloc/appointment_booking_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

void bookingConfirmation(
  BuildContext context,
  String uid,
  DateTime selectedDate,
  String selectedTimeSlot,
  String doctorName,
  String category,
  String fees,
  String profile,
  String type,
) {
  final user = getSlotBookedUserData(context);
  SlotBookServices().bookAppointment(
    date: DateFormat('yyyy-MM-dd').format(selectedDate),
    context: context,
    uid: uid,
    selectedTime: selectedTimeSlot,
    isBooked: 'true',
    user: user,
  );
  final userId = FirebaseAuth.instance.currentUser!.uid;
  final bookingId = generateRandom8DigitNumber();
  final booking = BookingModel(
    patientName: user.name,
    uid: uid,
    bookedDate: DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now()),
    slotDate: DateFormat('yyyy-MM-dd').format(selectedDate),
    slotTime: selectedTimeSlot,
    status: 'Active',
    doctorName: doctorName,
    fees: fees,
    doctorCategory: category,
    cancelledAt: '',
    type: type,
    profile: profile,
    bookingId: 'Docs$bookingId',
    patientId: userId,
  );

  context
      .read<AppointmentBookingBloc>()
      .add(AppointmentBookingEvent.confirmSlotBooking(booking));
}
