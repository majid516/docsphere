import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/consultations/model/consultation_model.dart';
import 'package:docshpere/features/consultations/services/fetchAllConsultations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.dart';
part 'consultation_state.dart';
part 'consultation_bloc.freezed.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc() : super(_InitialState()) {
    on<_FetchAllConsultations>((event, emit) async{
      try {
        emit(ConsultationState.loadingState());
        final consultations = await ConsultationServices().fetchAllUpcomingSessions();
        emit(ConsultationState.loadedState(consultations));
      } catch (e) {
        log(e.toString());
        emit(ConsultationState.errorState());
        
      }
    });
  }
}
