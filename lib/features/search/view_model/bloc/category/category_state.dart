part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initialState() = _InitialState;
  const factory CategoryState.loadingState() = _LoadingState;
  const factory CategoryState.laodedState(List<CategoryModel> categories) = _LoadedState;
  const factory CategoryState.errorState(String message) = _ErrorState;
}
