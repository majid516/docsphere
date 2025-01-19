import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/booking_appointment/model/booking_model.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';
import 'package:docshpere/features/booking_appointment/services/add_to_my_bookings.dart';
import 'package:docshpere/features/booking_appointment/services/booking_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_booking_event.dart';
part 'appointment_booking_state.dart';
part 'appointment_booking_bloc.freezed.dart';

class AppointmentBookingBloc extends Bloc<AppointmentBookingEvent, AppointmentBookingState> {
  AppointmentBookingBloc() : super(_InitialState()) {
    on<_FetchAllTimeSlots>((event, emit) async{
       try {
        emit(AppointmentBookingState.loadingState());
        final slots = await BookingServices().fetchAllTimeSlots(event.uid);
        emit(AppointmentBookingState.loadedState(slots));

      } catch (e) {
        log(e.toString());
        emit(AppointmentBookingState.errorState(e.toString()));
        
      }
    });
    on<_FetchAllBookings>((event, emit) async{
       try {
        emit(AppointmentBookingState.loadingState());
        final bookings = await fetchAllBookings();
        emit(AppointmentBookingState.bookingDataFetchingLoaded(bookings));

      } catch (e) {
        log(e.toString());
        emit(AppointmentBookingState.errorState(e.toString()));
        
      }
    });
    on<_ConfirmSlotBooking>((event, emit) async{
       try {
        emit(AppointmentBookingState.loadingState());
        await addToMyBookings(event.booking);
        emit(AppointmentBookingState.bookingConfirmationLoaded());

      } catch (e) {
        log(e.toString());
        emit(AppointmentBookingState.errorState(e.toString()));
        
      }
    });
  }
}
