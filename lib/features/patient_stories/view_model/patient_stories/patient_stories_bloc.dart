import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/patient_stories/model/patient_stories_model.dart';
import 'package:docshpere/features/patient_stories/services/pateint_stories_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_stories_event.dart';
part 'patient_stories_state.dart';
part 'patient_stories_bloc.freezed.dart';

class PatientStoriesBloc extends Bloc<PatientStoriesEvent, PatientStoriesState> {
  final service =  PateintStoriesServices();
  PatientStoriesBloc() : super(_InitialState()) {
    on<_AddPatientStories>((event, emit) async{
      try {
        emit(PatientStoriesState.loadingState());
        await service.addPatientStories(event.doctorId,event.story);
        final stories = await service.fetchAllPatientStories(event.doctorId);
        emit(PatientStoriesState.storiesLoadedState(stories));
      } catch (e,s) {
        log('$e in $s');
        emit(PatientStoriesState.errorState());
        
      }
    });
    on<_FetchAllPatientStories>((event, emit) async{
      try {
        emit(PatientStoriesState.loadingState());
        final stories = await service.fetchAllPatientStories(event.doctorId);
        emit(PatientStoriesState.storiesLoadedState(stories));
      } catch (e,s) {
        log('$e in $s');
        emit(PatientStoriesState.errorState());
        
      }
    });
  }
}
