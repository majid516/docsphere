import 'package:docshpere/core/models/basic_doctor_details.dart';
import 'package:docshpere/features/doctor/model/search_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubitCubit extends Cubit<SearchModelState> {
  SearchCubitCubit()
      : super(SearchModelState(
          allDoctors: [],
          filteredDoctors: [],
          searchQuery: '',
        ));

  void initializeDoctors(List<BasicDoctorModel> doctors) {
    emit(state.copyWith(allDoctors: doctors, filteredDoctors: doctors));
  }

  void searchDoctor(String searchQuery) {
    _filterDoctors(searchQuery: searchQuery);
  }

  void filterByPrice(double minPrice, double maxPrice) {
    _filterDoctors(minPrice: minPrice, maxPrice: maxPrice);
  }

  void filterByExperience(double minExperience, double maxExperience) {
    _filterDoctors(minExperience: minExperience, maxExperience: maxExperience);
  }

  void sortByPriceAscending() {
    _sortDoctors(isPriceAscending: true);
  }

  void sortByPriceDescending() {
    _sortDoctors(isPriceAscending: false);
  }

  void sortByExperienceAscending() {
    _sortDoctors(isExperienceAscending: true);
  }

  void sortByExperienceDescending() {
    _sortDoctors(isExperienceAscending: false);
  }

  void _filterDoctors({
    String? searchQuery,
    double? minPrice,
    double? maxPrice,
    double? minExperience,
    double? maxExperience,
  }) {
    final updatedSearchQuery = searchQuery ?? state.searchQuery;
    final updatedMinPrice = minPrice ?? state.minPrice;
    final updatedMaxPrice = maxPrice ?? state.maxPrice;
    final updatedMinExperience = minExperience ?? state.minExperience;
    final updatedMaxExperience = maxExperience ?? state.maxExperience;

    final filteredDoctorsList = state.allDoctors.where((doctor) {
      final matchesQuery = doctor.name.toLowerCase().startsWith(updatedSearchQuery.toLowerCase());
      final matchesPrice = int.parse(doctor.fees) >= updatedMinPrice && int.parse(doctor.fees) <= updatedMaxPrice;
      final matchesExperience = int.parse(doctor.experience) >= updatedMinExperience && int.parse(doctor.experience) <= updatedMaxExperience;

      return matchesQuery && matchesPrice && matchesExperience;
    }).toList();

    emit(state.copyWith(
      filteredDoctors: filteredDoctorsList,
      searchQuery: updatedSearchQuery,
      minPrice: updatedMinPrice,
      maxPrice: updatedMaxPrice,
      minExperience: updatedMinExperience,
      maxExperience: updatedMaxExperience,
    ));
  }

  void _sortDoctors({bool? isPriceAscending, bool? isExperienceAscending}) {
    List<BasicDoctorModel> sortedDoctors = List.from(state.filteredDoctors);

    if (isPriceAscending != null) {
      sortedDoctors.sort((a, b) {
        return isPriceAscending
            ? int.parse(a.fees).compareTo(int.parse(b.fees))
            : int.parse(b.fees).compareTo(int.parse(a.fees));
      });
    }

    if (isExperienceAscending != null) {
      sortedDoctors.sort((a, b) {
        return isExperienceAscending
            ? int.parse(a.experience).compareTo(int.parse(b.experience))
            : int.parse(b.experience).compareTo(int.parse(a.experience));
      });
    }

    emit(state.copyWith(filteredDoctors: sortedDoctors));
  }
}
