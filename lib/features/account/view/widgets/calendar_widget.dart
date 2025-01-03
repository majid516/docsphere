import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/features/account/view_model/cubit/cubit/calendar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarWidget extends StatelessWidget {
  final String title;
  final TextEditingController dobController;
  const CalendarWidget({
    super.key,
    required this.title,
    required this.dobController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Space.wSpace5,
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: MyColors.blackColor,
                ),
              ),
              Icon(
                Icons.emergency,
                size: 12,
              )
            ],
          ),
          BlocBuilder<CalendarCubit, String>(
            builder: (context, state) {
              return InkWell(
                onTap: () async {
                  await context
                      .read<CalendarCubit>()
                      .selectDate(context, dobController);
                },
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
                        state.isNotEmpty
                            ? state
                            : 'Select DOB', // Show selected date or placeholder
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.calendar_today,
                        color: MyColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
