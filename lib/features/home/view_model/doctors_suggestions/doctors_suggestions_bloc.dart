import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_suggestions_event.dart';
part 'doctors_suggestions_state.dart';
part 'doctors_suggestions_bloc.freezed.dart';

class DoctorsSuggestionsBloc extends Bloc<DoctorsSuggestionsEvent, DoctorsSuggestionsState> {
  DoctorsSuggestionsBloc() : super(_Initial()) {
    on<DoctorsSuggestionsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
