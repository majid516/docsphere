import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:docshpere/features/medical_records/model/record_model.dart';
import 'package:docshpere/features/medical_records/services/records_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_records_event.dart';
part 'medical_records_state.dart';
part 'medical_records_bloc.freezed.dart';

class MedicalRecordsBloc
    extends Bloc<MedicalRecordsEvent, MedicalRecordsState> {
  MedicalRecordsBloc() : super(_InitialState()) {
    on<_FechAllMedicalRecords>((event, emit) async {
      try {
        emit(MedicalRecordsState.recordloadingState());
        final records = await RecordsServices().fetchAllMedicalRecords();
        emit(MedicalRecordsState.recordsloadedState(records));
      } catch (e) {
        log(e.toString());
        emit(MedicalRecordsState.errorState());
      }
    });
    on<_AddMedicalRecords>((event, emit) async {
      try {
        await RecordsServices().addMedicalRecord(event.record);
        
      } catch (e) {
        log(e.toString());
        emit(MedicalRecordsState.errorState());
      }
    });
    on<_DeleteMedicalRecord>((event, emit) async {
      try {
       await RecordsServices().deleteMedicalRecord(event.id);
       final records = await RecordsServices().fetchAllMedicalRecords();
        emit(MedicalRecordsState.recordsloadedState(records));
        
      } catch (e) {
        log(e.toString());
        emit(MedicalRecordsState.errorState());
      }
    });
  }
}
