import 'package:bloc/bloc.dart';
import 'package:docshpere/features/search/model/category_model.dart';
import 'package:docshpere/features/search/services/get_all_medical_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(_InitialState()) {
    on<_FechAllMedicalCategories>((event, emit)async {
      try {
         emit(CategoryState.loadingState());
         final categories =  await getAllMedicalCategories();
         emit(CategoryState.laodedState(categories));
      } catch (e) {
        emit(CategoryState.errorState(e.toString()));
      }
    });
  }
}
