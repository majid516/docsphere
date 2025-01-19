import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/my_doctors/model/my_doctor_model.dart';
import 'package:docshpere/features/my_doctors/services/get_my_doctors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_doctor_event.dart';
part 'my_doctor_state.dart';
part 'my_doctor_bloc.freezed.dart';

class MyDoctorBloc extends Bloc<MyDoctorEvent, MyDoctorState> {
  MyDoctorBloc() : super(_InitialState()) {
    on<_FetchAllMyDoctor>((event, emit) async{
     try {
       emit(MyDoctorState.loadingState());
       final doctors = await getAllMyDoctors();
       emit(MyDoctorState.loadedState(doctors));
     } catch (e) {
      log(e.toString());
       emit(MyDoctorState.errorState());
       
     }
    });
  }
}
