part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.addPayment(PaymentModel payment, String docId) = _AddPayment;
  const factory PaymentEvent.fetchAllPayments() = _FetchAllPayments;
}