import 'dart:convert';
import 'dart:io';
import 'package:docshpere/core/components/custom_snackbar.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/spaces/space.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/features/account/model/user_model.dart';
import 'package:docshpere/features/account/view/widgets/custom_dropdown_filed.dart';
import 'package:docshpere/features/account/view/widgets/custom_text_field.dart';
import 'package:docshpere/features/account/view_model/bloc/profile_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatelessWidget {
  final UserModel? user;
  EditProfileScreen({
    super.key,
    required this.user,
  });

  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController bloodController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? profile;
  @override
  Widget build(BuildContext context) {
    if (user != null) {
       profile = user!.profileImage;
    nameController.text = user!.name.isEmpty ? "" : user!.name;
    emailController.text = user!.email.isEmpty ? "" : user!.email;
    contactController.text =
        user!.contactNumber.isEmpty ? "" : user!.contactNumber;
    dobController.text = user!.dob.isEmpty ? "" : user!.dob;
    bloodController.text = user!.bloodGroup.isEmpty ? "" : user!.bloodGroup;
    genderController.text = user!.gender.isEmpty ? "" : user!.gender;
    }
    return Scaffold(
      appBar: AppBar(
       
        title: Text(
          'Edit Profile',
          style: CommonStyles.appbarTitleBlackStyle,
        ),
        backgroundColor: MyColors.whiteColor,
        centerTitle: true,
      ),
      backgroundColor: MyColors.whiteColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Column(
                  spacing: 15,
                  children: [
                    InkWell(
                      onTap: () => context
                          .read<ProfileBloc>()
                          .add(PickImageFromGallery()),
                      child: state.maybeWhen(
                        orElse: () {
                          if (profile != '') {
                            return CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  MemoryImage(base64Decode(profile!)),
                            );
                          }
                          return CircleAvatar(
                            radius: 45,
                            backgroundColor:
                                MyColors.lightColor.withValues(alpha: 0.3),
                            child: Icon(
                              Icons.person,
                              size: 60,
                              color: MyColors.primaryColor,
                            ),
                          );
                        },
                        loadedState: (paths, base) {
                          profile = base;
                          return CircleAvatar(
                            radius: 45,
                            backgroundImage: FileImage(File(paths!)),
                          );
                        },
                      ),
                    ),
                    CustomTextFormField(
                      hintText: 'Enter name',
                      controller: nameController,
                      title: 'Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Enter email',
                      controller: emailController,
                      title: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Enter contact',
                      controller: contactController,
                      title: 'Contact Number',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Contact number is required';
                        }
                        if (value.length != 10 ||
                            !RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'Enter a valid 10-digit number';
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      hintText: 'Enter date of birth',
                      controller: dobController,
                      title: 'Date of Birth',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Date of birth is required';
                        }
                        if (RegExp(r'^\d{2}/\d{2}/\d{4}$').hasMatch(value)) {
                          return 'Enter a valid 10-digit number';
                        }
                        return null;
                      },
                    ),
                    CustomDropDownField(
                      items: [
                        "A Positive (A+)",
                        "A Negative (A-)",
                        "B Positive (B+)",
                        "B Negative (B-)",
                        "AB Positive (AB+)",
                        "AB Negative (AB-)",
                        "O Positive (O+)",
                        "O Negative (O-)",
                      ],
                      hintText: 'Select Blood Group',
                      title: 'Blood Group',
                      controller: bloodController,
                      errorMessage: 'Select blood group',
                    ),
                    CustomDropDownField(
                      items: [
                        "Male",
                        "Female",
                        "Other",
                      ],
                      hintText: 'Select Gender',
                      title: 'Gender',
                      controller: genderController,
                      errorMessage: 'Select your gender',
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final user = UserModel(
                              name: nameController.text.trim(),
                              email: emailController.text.trim(),
                              profileImage: profile ?? '',
                              contactNumber: contactController.text.trim(),
                              dob: dobController.text.trim(),
                              bloodGroup: bloodController.text.trim(),
                              gender: genderController.text.trim());
                          context
                              .read<ProfileBloc>()
                              .add(ProfileEvent.updateUserData(user));
                          showCustomSnackBar(
                              context, 'updated profile successfully', false);
                          context.go(MyRoutes.profileScreen,extra: user);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primaryColor,
                      ),
                      child: Text(
                        'Submit',
                        style: CommonStyles.commonButtonWhiteTextStyle,
                      ),
                    ),
                    Space.hSpace20,
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
