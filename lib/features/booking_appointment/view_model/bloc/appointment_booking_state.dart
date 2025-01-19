part of 'appointment_booking_bloc.dart';

@freezed
class AppointmentBookingState with _$AppointmentBookingState {
  const factory AppointmentBookingState.initialState() = _InitialState;
  const factory AppointmentBookingState.loadingState() = _LoadingState;
  const factory AppointmentBookingState.bookingConfirmationLoaded() = _BookingConfirmationLoaded;
  const factory AppointmentBookingState.loadedState(List<SlotModel> slots) = _LoadedState;
  const factory AppointmentBookingState.bookingDataFetchingLoaded(List<BookingModel> booking) = _BookingDataFetchingLoaded;
  const factory AppointmentBookingState.errorState(String message) = _ErrorState;

}
