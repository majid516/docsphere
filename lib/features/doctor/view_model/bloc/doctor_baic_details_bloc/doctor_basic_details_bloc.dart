import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/doctor/services/fech_doctor_basic_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_basic_details_event.dart';
part 'doctor_basic_details_state.dart';
part 'doctor_basic_details_bloc.freezed.dart';

class DoctorBasicDetailsBloc extends Bloc<DoctorBasicDetailsEvent, DoctorBasicDetailsState> {
  DoctorBasicDetailsBloc() : super(_InitialState()) {
    on<_FechBasicDoctorDetails>((event, emit)async{
     emit(DoctorBasicDetailsState.loadingState());
     try {
      final doctors = await fechBasicDoctorDetails(event.category);
     emit(DoctorBasicDetailsState.basicDetaisLoadedState(doctors));
     } catch (e) {
      log(e.toString());
       emit(DoctorBasicDetailsState.errorState());
     }
    });
  }
}
