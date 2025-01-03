part of 'appointment_booking_bloc.dart';

@freezed
class AppointmentBookingEvent with _$AppointmentBookingEvent {
  const factory AppointmentBookingEvent.fetchAllTimeSlots(String uid) = _FetchAllTimeSlots;
}