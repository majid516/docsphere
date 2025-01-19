import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/appointment/model/upcoming_session_model.dart';
import 'package:docshpere/features/appointment/services/cancel_appointment.dart';
import 'package:docshpere/features/appointment/services/complete_consultation.dart';
import 'package:docshpere/features/appointment/services/fetch_all_upcoming_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_session_event.dart';
part 'upcoming_session_state.dart';
part 'upcoming_session_bloc.freezed.dart';

class UpcomingSessionBloc
    extends Bloc<UpcomingSessionEvent, UpcomingSessionState> {
  UpcomingSessionBloc() : super(_InitialState()) {
    on<_FetchAllUpcomingSessions>((event, emit) async {
      try {
        emit(UpcomingSessionState.loadingState());
        final bookings = await fetchAllUpcomingSessions();
        emit(UpcomingSessionState.bookingDataFetchingLoaded(bookings));
      } catch (e) {
        log(e.toString());
        emit(UpcomingSessionState.errorState(e.toString()));
      }
    });
    on<_CancelAppointment>((event, emit) async {
      try {
        emit(UpcomingSessionState.loadingState());
        await cancelAppointment(event.date, event.time,event.uid);
       final bookings = await fetchAllUpcomingSessions();
        emit(UpcomingSessionState.bookingDataFetchingLoaded(bookings));
      } catch (e) {
        log(e.toString());
        emit(UpcomingSessionState.errorState(e.toString()));
      }
    });
    on<_CompleteConfirmation>((event, emit) async {
      try {
        emit(UpcomingSessionState.loadingState());
        await consultationCompleted(event.date, event.time,event.uid);
        final bookings = await fetchAllUpcomingSessions();
        emit(UpcomingSessionState.bookingDataFetchingLoaded(bookings));
      } catch (e) {
        log(e.toString());
        emit(UpcomingSessionState.errorState(e.toString()));
      }
    });
  }
} 
