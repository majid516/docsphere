part of 'appointment_booking_bloc.dart';

@freezed
class AppointmentBookingState with _$AppointmentBookingState {
  const factory AppointmentBookingState.initialState() = _InitialState;
  const factory AppointmentBookingState.loadingState() = _LoadingState;
  const factory AppointmentBookingState.loadedState(List<SlotModel> slots) = _LoadedState;
  const factory AppointmentBookingState.errorState(String message) = _ErrorState;

}
