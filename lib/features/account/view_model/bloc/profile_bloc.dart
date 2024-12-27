import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/services/get_profile.dart';
import 'package:docshpere/features/account/services/update_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(InitialState()) {
    on<PickImageFromGallery>((event, emit) async {
      try {
        final XFile? selectedImage =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (selectedImage != null) {
          final byte = await selectedImage.readAsBytes();
          final path = base64Encode(byte);
          emit(ProfileState.loadedState(selectedImage.path, path));
        } else {
          emit(ProfileState.loadingState());
        }
      } catch (error) {
        emit(ProfileState.errorState(error.toString()));
      }
    });
    on<_GetUserData>((event, emit) async {
      try {
        emit(ProfileState.loadingState());
        final user = await getUser();
        emit(ProfileState.userLoadedState(user!));
      } catch (error) {
        emit(ProfileState.errorState(error.toString()));
      }
    });
    on<_UpdateUserData>((event, emit) async {
      try {
        emit(ProfileState.loadingState());
       await updateUser(event.user);
        emit(ProfileState.userUpdatedState());
      } catch (error) {
        emit(ProfileState.errorState(error.toString()));
      }
    });
  }
}
