part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initialState() = InitialState;
  const factory AuthState.loadingState() = LoadingState;
  const factory AuthState.loadedState() = LoadedState;
  const factory AuthState.errorState(String error) = ErrorState;
}
