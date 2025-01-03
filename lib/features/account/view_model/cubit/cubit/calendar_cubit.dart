import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarCubit extends Cubit<String> {
  CalendarCubit() : super('');

  String dateOfBirth = '';

  Future<void> selectDate(BuildContext context, TextEditingController dobController) async {
    final currentDate = DateTime.now();
    final firstDate = DateTime(currentDate.year - 90, currentDate.month, currentDate.day); 
    final lastDate = DateTime(currentDate.year - 18, currentDate.month, currentDate.day); 

    final selectedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    
    if (selectedDate != null) {
      dateOfBirth = DateFormat('yyyy-MM-dd').format(selectedDate);
      dobController.text = dateOfBirth; 
      emit(dateOfBirth); 
    }
  }
}
