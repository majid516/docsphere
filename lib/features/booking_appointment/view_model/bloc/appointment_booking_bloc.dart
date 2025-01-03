import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';
import 'package:docshpere/features/booking_appointment/services/booking_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_booking_event.dart';
part 'appointment_booking_state.dart';
part 'appointment_booking_bloc.freezed.dart';

class AppointmentBookingBloc extends Bloc<AppointmentBookingEvent, AppointmentBookingState> {
  AppointmentBookingBloc() : super(_InitialState()) {
    on<AppointmentBookingEvent>((event, emit) async{
       try {
        emit(AppointmentBookingState.loadingState());
        final slots = await BookingServices().fetchAllTimeSlots(event.uid);
        emit(AppointmentBookingState.loadedState(slots));

      } catch (e) {
        log(e.toString());
        emit(AppointmentBookingState.errorState(e.toString()));
        
      }
    });
  }
}
