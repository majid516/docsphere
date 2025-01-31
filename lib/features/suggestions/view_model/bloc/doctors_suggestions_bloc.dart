import 'package:bloc/bloc.dart';
import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/suggestions/services/suggestion_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_suggestions_event.dart';
part 'doctors_suggestions_state.dart';
part 'doctors_suggestions_bloc.freezed.dart';

class DoctorsSuggestionsBloc extends Bloc<DoctorsSuggestionsEvent, DoctorsSuggestionsState> {
  DoctorsSuggestionsBloc() : super(_InitialState()) {
       on<_FechBasicDoctorDetails>((event, emit)async{
     emit(DoctorsSuggestionsState.loadingState());
     try {
      final doctors = await SuggestionServices().fetchBasicDoctorDetails(event.categories);
     emit(DoctorsSuggestionsState.basicDetaisLoadedState(doctors));
     } catch (e) {
       emit(DoctorsSuggestionsState.errorState());
     }
    });
  }
}
