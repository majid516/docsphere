import 'dart:convert';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/general_error_screen.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/common_styles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/my_doctors/view/widgets/loading_widget.dart';
import 'package:docshpere/features/my_doctors/view_model/bloc/my_doctors_bloc/my_doctor_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MyDoctorScreen extends StatelessWidget {
  const MyDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyDoctorBloc>().add(MyDoctorEvent.fetchAllMyDoctor());
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(ScreenSize.width, 100),
          child: CustomAppBar(
            action: () => context.pop(),
            title: 'My Doctors',
          )),
      backgroundColor: MyColors.whiteColor,
      body: BlocBuilder<MyDoctorBloc, MyDoctorState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadedState: (doctors) {
              return ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: Container(
                      width: ScreenSize.width,
                      height: 90,
                      decoration: BoxDecoration(
                        color: MyColors.lightColor.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: ListTile(
                          onTap: () => context
                              .push(MyRoutes.doctorDetailsScreen, extra: {
                            "uid": doctor.uid,
                            "consultationType": ''
                          }),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                MemoryImage(base64Decode(doctor.profile)),
                          ),
                          title: Text(
                            doctor.doctorName,
                            style: CommonStyles.doctorNameStyle,
                          ),
                          subtitle: Text(
                            doctor.doctorCategory,
                            style: CommonStyles.doctorDetailsStyle,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            loadingState: () {
              return MyDoctorsLoadingWidget();
            },
            errorState: () => GeneralErrorScreen(),
            orElse: () => SomethingWentWrongScreen(),
          );
        },
      ),
    );
  }
}
