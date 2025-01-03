import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:docshpere/features/doctor/model/doctor_full_details.dart';
import 'package:docshpere/features/doctor/services/fech_doctor_full_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_full_details_event.dart';
part 'doctor_full_details_state.dart';
part 'doctor_full_details_bloc.freezed.dart';

class DoctorFullDetailsBloc extends Bloc<DoctorFullDetailsEvent, DoctorFullDetailsState> {
  DoctorFullDetailsBloc() : super(_InitialState()) {
    on<_FechDoctorFullDetails>((event, emit) async{
       emit(DoctorFullDetailsState.loadingState());
     try {
      final doctors = await fechDoctorFullDetails(event.uid);
     emit(DoctorFullDetailsState.loadedState(doctors));
     } catch (e) {
      log(e.toString());
       emit(DoctorFullDetailsState.errorState());
     }
    });
  }
}
