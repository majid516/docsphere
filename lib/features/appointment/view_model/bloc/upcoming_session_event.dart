part of 'upcoming_session_bloc.dart';

@freezed
class UpcomingSessionEvent with _$UpcomingSessionEvent {
  const factory UpcomingSessionEvent.fetchAllUpcomingSessions() = _FetchAllUpcomingSessions;
  const factory UpcomingSessionEvent.cancelAppointment(String date, String time, String uid) = _CancelAppointment;
  const factory UpcomingSessionEvent.completeConfirmation(String date, String time, String uid) = _CompleteConfirmation;
}