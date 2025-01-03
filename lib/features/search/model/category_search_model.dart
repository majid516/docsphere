import 'package:docshpere/features/search/model/category_model.dart';

class CategorySearchModel {
  final List<CategoryModel> allCategories;
  final List<CategoryModel> filteredCategories;
  final String searchQuery;

  CategorySearchModel({
    required this.allCategories,
    required this.filteredCategories,
    required this.searchQuery,
  });

  CategorySearchModel copyWith({
    List<CategoryModel>? allCategories,
    List<CategoryModel>? filteredCategories,
    String? searchQuery,
  }) {
    return CategorySearchModel(
      allCategories: allCategories ?? this.allCategories,
      filteredCategories: filteredCategories ?? this.filteredCategories,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}
