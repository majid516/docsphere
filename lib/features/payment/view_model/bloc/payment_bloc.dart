import 'package:bloc/bloc.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:docshpere/features/payment/services/payment_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(_InitialState()) {
    on<_AddPayment>((event, emit) async{
      try {
        emit(PaymentState.loadingState());
        await PaymentServices().addPayment(event.payment, event.docId);
        emit(PaymentState.loadedState());
      } catch (e) {
        emit(PaymentState.errorState());
        
      }
    });
    on<_FetchAllPayments>((event, emit) async{
      try {
        emit(PaymentState.loadingState());
        final payments =  await PaymentServices().fetchAllPayments();
        emit(PaymentState.loadedPaymentsState(payments));
      } catch (e) {
        emit(PaymentState.errorState());
        
      }
    });
  }
}
