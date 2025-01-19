part of 'consultation_bloc.dart';

@freezed
class ConsultationEvent with _$ConsultationEvent {
  const factory ConsultationEvent.fetchAllConsultations() = _FetchAllConsultations;
}