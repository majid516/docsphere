
import 'package:bloc/bloc.dart';

class PasswordToggleCubit extends Cubit<Map<String, bool>> {
  PasswordToggleCubit() : super({"passwordObscure": true, "confirmPasswordObscure": true});

  void togglePasswordVisibility() {
    emit({"passwordObscure": !state["passwordObscure"]!, "confirmPasswordObscure": state["confirmPasswordObscure"]!});
  }

  void toggleConfirmPasswordVisibility() {
    emit({"passwordObscure": state["passwordObscure"]!, "confirmPasswordObscure": !state["confirmPasswordObscure"]!});
  }
}
