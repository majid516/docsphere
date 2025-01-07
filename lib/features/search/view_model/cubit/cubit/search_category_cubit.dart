import 'package:bloc/bloc.dart';
import 'package:docshpere/features/search/model/category_model.dart';
import 'package:docshpere/features/search/model/category_search_model.dart';

class SearchCategoryCubit extends Cubit<CategorySearchModel> {
  SearchCategoryCubit()
      : super(CategorySearchModel(
          allCategories: [],
          filteredCategories: [],
          searchQuery: '',
        ));
  void initializeCategories(List<CategoryModel> categories) {
    final sortedCategories = List<CategoryModel>.from(categories)
      ..sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));

    emit(state.copyWith(
      allCategories: sortedCategories,
      filteredCategories: sortedCategories,
    ));
  }

  void searchCategory(String searchQuery) {
    _filterCategories(searchQuery: searchQuery);
  }

  void _filterCategories({String? searchQuery}) {
    final updatedSearchQuery = searchQuery ?? state.searchQuery;

    List<CategoryModel> filteredCategoriesList;

    if (updatedSearchQuery.isEmpty) {
      filteredCategoriesList = List.from(state.allCategories)
        ..sort(
            (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
    } else {
      filteredCategoriesList = state.allCategories.where((category) {
        return category.title
            .toLowerCase()
            .startsWith(updatedSearchQuery.toLowerCase());
      }).toList();
    }

    emit(state.copyWith(
      filteredCategories: filteredCategoriesList,
      searchQuery: updatedSearchQuery,
    ));
  }
}
