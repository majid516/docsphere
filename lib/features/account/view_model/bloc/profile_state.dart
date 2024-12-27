part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initialState() = InitialState;
  const factory ProfileState.loadedState(String? paths,String base ) = LoadedState;
  const factory ProfileState.userLoadedState(UserModel user) = _UserLoadedState;
  const factory ProfileState.loadingState() = LoadingState;
  const factory ProfileState.userUpdatedState() = UserUpdatedState;
  const factory ProfileState.errorState(String error) = ErrorState;
}
