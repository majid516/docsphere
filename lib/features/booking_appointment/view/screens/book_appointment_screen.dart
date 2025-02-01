import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/booking_appointment/model/slot_model.dart';
import 'package:docshpere/features/booking_appointment/view/widgets/booking_button_widget.dart';
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
  final String fees;
  final String experience;
  final String consultationType;

  const BookAppointmentScreen({
    super.key,
    required this.uid,
    required this.name,
    required this.category,
    required this.profile,
    required this.fees,
    required this.experience,
    required this.consultationType,
  });

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
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
    super.initState();
    context
        .read<AppointmentBookingBloc>()
        .add(AppointmentBookingEvent.fetchAllTimeSlots(widget.uid));
  }

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(ProfileEvent.getUserData());

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
    final currentDateSlot = slots
        .firstWhere(
          (slot) =>
              slot.date == DateFormat('yyyy-MM-dd').format(selectedDate),
          orElse: () => SlotModel(
              date: DateFormat('yyyy-MM-dd').format(selectedDate),
              timeSlots: []),
        )
        .timeSlots;

    // Sort the slots based on time
    final sortedSlots = currentDateSlot
        .where((slot) =>
            slot.isBooked == 'false' || slot.isBooked == 'true')
        .toList()
      ..sort((a, b) {
        // Parse the time and compare them
        final timeA = DateFormat("h:mm a").parse(a.time); // Parse AM/PM time
        final timeB = DateFormat("h:mm a").parse(b.time); // Parse AM/PM time
        return timeA.compareTo(timeB); // Sort based on time
      });

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
          sortedSlots.isNotEmpty
              ? SizedBox(
                  width: ScreenSize.width,
                  height: ScreenSize.height * 0.42,
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 2,
                      children: sortedSlots.map((entry) {
                        return ChoiceChip(
                          checkmarkColor: MyColors.whiteColor,
                          label: Text(entry.time),
                          selected: selectedTimeSlot == entry.time,
                          onSelected: entry.isBooked == 'false'
                              ? (selected) {
                                  setState(() {
                                    selectedTimeSlot =
                                        selected ? entry.time : "";
                                  });
                                }
                              : null,
                          backgroundColor: MyColors.whiteColor,
                          selectedColor: MyColors.primaryColor,
                          labelStyle: TextStyle(
                            color: entry.isBooked == 'false' &&
                                    selectedTimeSlot == entry.time
                                ? Colors.white
                                : entry.isBooked == 'true'
                                    ? MyColors.errorRed
                                    : Colors.black,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )
              : NoSlotAvailableWidget(),
          Spacer(),
          BookingButtonWidget(
            selectedDate: selectedDate,
            widget: widget,
            selectedTimeSlot: selectedTimeSlot,
            doctorName: widget.name,
            cateogry: widget.category,
            fees: widget.fees,
            profile: widget.profile,
            experience: widget.experience,
            consultationType: widget.consultationType,
          ),
          Space.hSpace20,
        ],
      ),
    );
  },
  orElse: () {
    return const Center(child: CircularProgressIndicator());
  },
  errorState: (message) {
    return Text(message);
  },
  loadingState: () => DoctorCardLoadingListWidget(),
);

        },
      ),
    );
  }
}
