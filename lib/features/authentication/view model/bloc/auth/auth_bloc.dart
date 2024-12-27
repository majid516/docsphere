import 'package:bloc/bloc.dart';
import 'package:docshpere/features/authentication/services/register_user.dart';
import 'package:docshpere/features/authentication/services/sigin_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(InitialState()) {
    on<SignUp>((event, emit) async {
      try {
        await registerUser(event.name, event.email, event.password);
        emit(AuthState.loadedState());
      } catch (e) {
        emit(AuthState.errorState(e.toString()));
      }
    });

    on<SignIn>((event, emit) async {
      emit(AuthState.loadingState());
      try {
        await signInUser(event.email, event.password);
        emit(AuthState.loadedState());
      } on FirebaseAuthException catch (e) {
        String errorMessage;
        switch (e.code) {
          case 'user-not-found':
            errorMessage = "No user found for that email.";
            break;
          case 'wrong-password':
            errorMessage = "Invalid password.";
            break;
          default:
            errorMessage = "Something went wrong. Please try again.";
        }
        emit(AuthState.errorState(errorMessage));
      } catch (e) {
        emit(AuthState.errorState(e.toString()));
      }
    });
  }
}
