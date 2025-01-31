import 'dart:convert';
import 'package:docshpere/core/components/custom_app_bar.dart';
import 'package:docshpere/core/components/somthing_went_worng_screen.dart';
import 'package:docshpere/core/constants/app_theme/app_theme.dart';
import 'package:docshpere/core/constants/text_styles/authentication_syles.dart';
import 'package:docshpere/core/utils/screen_size/screen_size.dart';
import 'package:docshpere/features/consultations/view_model/bloc/consultation_bloc.dart';
import 'package:docshpere/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PreviousConsultationsPage extends StatelessWidget {
  const PreviousConsultationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<ConsultationBloc>()
        .add(ConsultationEvent.fetchAllConsultations());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(ScreenSize.width, 100),
        child: CustomAppBar(
          title: 'Consultations',
          action: () {
            context.pop();
          },
        ),
      ),
      backgroundColor: MyColors.whiteColor,
      body: BlocBuilder<ConsultationBloc, ConsultationState>(
        builder: (context, state) {
          return state.maybeWhen(
              loadedState: (consultations) {
                if (consultations.isEmpty) {
                  return Center(
                    child: Text(
                      'Book Your First Consultation',
                      style: AuthenticationSyles.hintTextStyle,
                    ),
                  );
                }
                return ListView.builder(
                  reverse: true,
                  shrinkWrap: true,
                  itemCount: consultations.length,
                  itemBuilder: (context, index) {
                    var consultation = consultations[index];
                    return Card(
                      elevation: 1,
                      color: const Color.fromARGB(255, 240, 240, 240),
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              MemoryImage(base64Decode(consultation.profile)),
                        ),
                        title: Text(consultation.doctorName,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(consultation.doctorCategory),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(consultation.slotDate),
                            Text(consultation.slotTime,
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        onTap: () {
                          context.push(MyRoutes.consultationDetailsScreen,
                              extra: consultation);
                        },
                      ),
                    );
                  },
                );
              },
              loadingState: () {
                return ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      tileColor: MyColors.lightColor.withValues(alpha: 0.3),
                      minTileHeight: 90,
                    ),
                  ),
                  itemCount: 5,
                );
              },
              orElse: () => SomethingWentWrongScreen());
        },
      ),
    );
  }
}
