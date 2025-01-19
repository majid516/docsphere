import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/features/booking_appointment/model/slot_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

SlotUserModel getSlotBookedUserData(BuildContext context) {
  late SlotUserModel currUser;

  final state = context.read<ProfileBloc>().state;
  state.maybeWhen(
    userLoadedState: (user) {
      currUser = SlotUserModel(
        uid: user.uid!,
        name: user.name,
        email: user.email,
        profileImage: user.profileImage,
        contactNumber: user.contactNumber,
        dob: user.dob,
        bloodGroup: user.bloodGroup,
        gender: user.gender,
      );
    },
    orElse: () {
      throw Exception('User data not loaded.');
    },
  );

  return currUser;
}
