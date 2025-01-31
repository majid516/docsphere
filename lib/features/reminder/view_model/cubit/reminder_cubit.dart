import 'package:bloc/bloc.dart';

class ReminderCubit extends Cubit<bool> {
  ReminderCubit() : super(true);
  void chageNotificationStatus(){
    emit(!state);
  }
}
