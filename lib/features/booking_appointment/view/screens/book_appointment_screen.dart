import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';
import 'package:docshpere/features/booking_appointment/view/widgets/doctor_card_widget.dart';
import 'package:docshpere/features/booking_appointment/view/widgets/heading_widget.dart';
import 'package:docshpere/features/booking_appointment/view/widgets/loading_widget.dart';
import 'package:docshpere/features/booking_appointment/view/widgets/no_slot_available_widget.dart';
import 'package:docshpere/features/booking_appointment/view_model/bloc/appointment_booking_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class BookAppointmentScreen extends StatefulWidget {
  final String uid;
  final String name;
  final String category;
  final String profile;
  const BookAppointmentScreen(
      {super.key,
      required this.uid,
      required this.name,
      required this.category,
      required this.profile});
  @override
  // ignore: library_private_types_in_public_api
  _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  String selectedTimeSlot = "";

  void selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
    context
        .read<AppointmentBookingBloc>()
        .add(AppointmentBookingEvent.fetchAllTimeSlots(widget.uid));
    super.initState();
  }

  void _bookAppointment() {
    if (selectedTimeSlot.isEmpty) {
      showCustomSnackBar(context, 'Please select a slot', true);
      return;
    }
     showCustomSnackBar(context, 'successfully slot booked', false);
      return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 110),
        child: CustomAppBar(
          title: 'Book Appointment',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      body: BlocBuilder<AppointmentBookingBloc, AppointmentBookingState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadedState: (slots) {
              final currentDateSlots = slots
                  .firstWhere(
                    (slot) =>
                        slot.date ==
                        DateFormat('yyyy-MM-dd').format(selectedDate),
                    orElse: () => SlotModel(
                        date: DateFormat('yyyy-MM-dd').format(selectedDate),
                        timeSlots: []),
                  )
                  .timeSlots;

              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DoctorCardWidget(widget: widget),
                    Space.hSpace20,
                    HeadingWidget(
                      heading: 'Select Date',
                    ),
                    Space.hSpace15,
                    InkWell(
                      onTap: selectDate,
                      child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              DateFormat.yMMMMd().format(selectedDate),
                              style: TextStyle(fontSize: 16),
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: MyColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Space.hSpace15,
                    HeadingWidget(
                      heading: 'Select Time Slot',
                    ),
                    SizedBox(height: 10),
                    currentDateSlots.isNotEmpty
                        ? Wrap(
                            spacing: 5,
                            runSpacing: 2,
                            children: currentDateSlots.map((slot) {
                              return ChoiceChip(
                                checkmarkColor: MyColors.blackColor,
                                label: Text(slot),
                                selected: selectedTimeSlot == slot,
                                onSelected: (selected) {
                                  setState(() {
                                    selectedTimeSlot = selected ? slot : "";
                                  });
                                },
                                backgroundColor: MyColors.whiteColor,
                                selectedColor: MyColors.primaryColor,
                                labelStyle: TextStyle(
                                  color: selectedTimeSlot == slot
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              );
                            }).toList(),
                          )
                        : NoSlotAvailableWidget(),
                    Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: _bookAppointment,
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
                    ),
                    Space.hSpace20
                  ],
                ),
              );
            },
            orElse: () {
              return Text('data');
            },
            errorState: (message) {
              return Text(message);
            },
            loadingState: () => LoadingWidget(),
          );
        },
      ),
    );
  }
}
