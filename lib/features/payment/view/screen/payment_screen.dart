import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/booking_appointment/services/booking_confirmation.dart';
import 'package:docshpere/features/my_doctors/services/time_convert_to_period.dart';
import 'package:docshpere/features/payment/model/payment_model.dart';
import 'package:docshpere/features/payment/view/widget/appointmet_details_card.dart';
import 'package:docshpere/features/payment/view/widget/doctor_base_detail_card.dart';
import 'package:docshpere/features/payment/view_model/bloc/payment_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatefulWidget {
  final String doctorName;
  final String category;
  final String experience;
  final String slotDate;
  final String slotTime;
  final String profile;
  final String fees;
  final DateTime selectedDateRaw;
  final String uid;
  final String consultationType;
  const PaymentScreen(
      {super.key,
      required this.doctorName,
      required this.category,
      required this.experience,
      required this.slotDate,
      required this.slotTime,
      required this.profile,
      required this.fees,
      required this.uid, 
      required this.selectedDateRaw, required this.consultationType});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late Razorpay razorpay;

  @override
  void initState() {
    super.initState();
    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    bookingConfirmation(
      context,
      widget.uid,
      widget.selectedDateRaw,
      widget.slotTime,
      widget.doctorName,
      widget.category,
      widget.fees,
      widget.profile,
      widget.consultationType
    );
     DateTime now = DateTime.now();
     String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    final payment = PaymentModel(id: response.paymentId!, profile: widget.profile, doctorName: widget.doctorName, amount: widget.fees, status: 'success', transactionType: 'debit', date:formattedDateTime );
    context.read<PaymentBloc>().add(PaymentEvent.addPayment(payment, widget.uid));
    showCustomSnackBar(context, 'Payment Successfull', false);
    context.go(MyRoutes.home);
    
  }

  void handlePaymentError(PaymentFailureResponse response) {
       DateTime now = DateTime.now();
     String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
    final payment = PaymentModel(id: 'id_failed', profile: widget.profile, doctorName: widget.doctorName, amount: widget.fees, status: 'failed', transactionType: 'debit', date:formattedDateTime );
    context.read<PaymentBloc>().add(PaymentEvent.addPayment(payment,widget.uid));
    showCustomSnackBar(context, 'Payment Failed, Please try agian!', true);
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    showCustomSnackBar(context, 'External Wallet Selected', false);
  }

  void openCheckout() {
    final fee = int.parse("${widget.fees}00");
    var options = {
      'key': 'rzp_test_0cBu6RNEEzVgUn',
      'amount': fee,
      'name': 'DocSphere',
      'description': 'Doctor Appointment Payment',
      'prefill': {
        'contact': '9044771521',
        'email': 'leancodeapp@gmail.com',
      },
      'theme': {'color': "#0EA4DC"},
    };
    try {
      razorpay.open(options);
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final slot = getTimePeriod(widget.slotTime);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Payment Screen',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorBaseDetailsCard(widget: widget),
            const SizedBox(height: 20),
            AppointmentDetailsCard(widget: widget, slot: slot),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: openCheckout,
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
                child: const Text("Proceed to Payment",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MyColors.whiteColor)),
              ),
            ),
            Space.hSpace20,
          ],
        ),
      ),
    );
  }
}
