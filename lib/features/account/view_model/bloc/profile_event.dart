part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.pickImageFromGallery() = PickImageFromGallery;
  const factory ProfileEvent.getUserData() = _GetUserData;
  const factory ProfileEvent.updateUserData(UserModel user) = _UpdateUserData;
}