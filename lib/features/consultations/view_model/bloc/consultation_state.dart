part of 'consultation_bloc.dart';

@freezed
class ConsultationState with _$ConsultationState {
  const factory ConsultationState.initialState() = _InitialState;
  const factory ConsultationState.loadingState() = _LoadingState;
  const factory ConsultationState.loadedState(List<ConsultationModel> consultations) = _LoadedState;
  const factory ConsultationState.errorState() = _ErrorState;
}
