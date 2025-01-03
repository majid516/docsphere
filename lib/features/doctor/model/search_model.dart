import 'package:docshpere/core/models/basic_doctor_details.dart';

class SearchModelState {
  final List<BasicDoctorModel> allDoctors;
  final List<BasicDoctorModel> filteredDoctors;
  final String searchQuery;
  final double minPrice;
  final double maxPrice;
  final double minExperience;
  final double maxExperience;

  SearchModelState({
    required this.allDoctors,
    required this.filteredDoctors,
    required this.searchQuery,
    this.minPrice = 0,
    this.maxPrice = double.infinity,
    this.minExperience = 0,
    this.maxExperience = double.infinity,
  });

  SearchModelState copyWith({
    List<BasicDoctorModel>? allDoctors,
    List<BasicDoctorModel>? filteredDoctors,
    String? searchQuery,
    double? minPrice,
    double? maxPrice,
    double? minExperience,
    double? maxExperience,
  }) {
    return SearchModelState(
      allDoctors: allDoctors ?? this.allDoctors,
      filteredDoctors: filteredDoctors ?? this.filteredDoctors,
      searchQuery: searchQuery ?? this.searchQuery,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      minExperience: minExperience ?? this.minExperience,
      maxExperience: maxExperience ?? this.maxExperience,
    );
  }
}
