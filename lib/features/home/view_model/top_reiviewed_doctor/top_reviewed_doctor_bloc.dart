import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/home/services/fetch_top_reivewed_doctor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_reviewed_doctor_event.dart';
part 'top_reviewed_doctor_state.dart';
part 'top_reviewed_doctor_bloc.freezed.dart';

class TopReviewedDoctorBloc extends Bloc<TopReviewedDoctorEvent, TopReviewedDoctorState> {
  TopReviewedDoctorBloc() : super(_InitialState()) {
   on<_FetchTopReviewedDoctors>((event, emit) async{
      try {
        emit(TopReviewedDoctorState.loadingState());
        final doctors = await fetchTopReviewedDoctors();
        emit(TopReviewedDoctorState.topReviewedDoctorLoadedState(doctors));
      } catch (e,s) {
        log('$e in $s');
        emit(TopReviewedDoctorState.errorState());
        
      }
    });
  }
}
