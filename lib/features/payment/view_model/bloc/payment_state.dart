part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initialState() = _InitialState;
  const factory PaymentState.loadingState() = _LoadingState;
  const factory PaymentState.loadedState() = _LoadedState;
  const factory PaymentState.loadedPaymentsState(List<PaymentModel> payments) = _LoadedPaymentsState;
  const factory PaymentState.errorState() = _ErrorState;
}
