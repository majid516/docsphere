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
    emit(state.copyWith(
        allCategories: categories, filteredCategories: categories));
  }

  void searchCategory(String searchQuery) {
    _filterCategories(searchQuery: searchQuery);
  }

  void _filterCategories({
    String? searchQuery,
  }) {
    final updatedSearchQuery = searchQuery ?? state.searchQuery;

    final filteredCategoriesList = state.allCategories.where((category) {
      final matchesQuery = category.title
          .toLowerCase()
          .startsWith(updatedSearchQuery.toLowerCase());

      return matchesQuery;
    }).toList();

    emit(state.copyWith(
      filteredCategories: filteredCategoriesList,
      searchQuery: updatedSearchQuery,
    ));
  }
}
