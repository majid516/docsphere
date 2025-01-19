part of 'upcoming_session_bloc.dart';

@freezed
class UpcomingSessionState with _$UpcomingSessionState {
  const factory UpcomingSessionState.initialState() = _InitialState;
  const factory UpcomingSessionState.loadingState() = _LoadingState;
  const factory UpcomingSessionState.bookingDataFetchingLoaded(List<UpcomingSessionModel> booking) = _BookingDataFetchingLoaded;
  const factory UpcomingSessionState.errorState(String message) = _ErrorState;}
