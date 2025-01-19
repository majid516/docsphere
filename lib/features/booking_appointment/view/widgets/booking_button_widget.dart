import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/booking_appointment/view/screens/book_appointment_screen.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class BookingButtonWidget extends StatelessWidget {
  const BookingButtonWidget({
    super.key,
    required this.selectedDate,
    required this.widget,
    required this.selectedTimeSlot,
    required this.doctorName,
    required this.fees,
    required this.profile,
    required this.cateogry,
    required this.experience,
    required this.consultationType,
  });

  final DateTime selectedDate;
  final BookAppointmentScreen widget;
  final String selectedTimeSlot;
  final String doctorName;
  final String fees;
  final String profile;
  final String cateogry;
  final String experience;
  final String consultationType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (selectedTimeSlot.isNotEmpty) {
            context.push(MyRoutes.paymentScreen, extra: {
              'doctorName': doctorName,
              'category': cateogry,
              'fees': fees,
              'profile': profile,
              'experience': experience,
              'slotTime': selectedTimeSlot,
              'selectedDateRaw': selectedDate,
              'uid': widget.uid,
              'consultationType': consultationType,
              'slotDate': DateFormat.yMMMMd().format(selectedDate)
            });
          } else {
            showCustomSnackBar(context, 'Please Select Your Time Slot', true);
          }
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40),
          backgroundColor: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Book Appointment',
          style: CommonStyles.commonButtonWhiteTextStyle,
        ),
      ),
    );
  }
}

